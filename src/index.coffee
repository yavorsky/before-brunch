sysPath = require 'path'
{exec}  = require 'child_process'

module.exports = class AfterBrunch
  brunchPlugin: yes

  constructor: (@config) ->
    @commands = @config.plugins.beforeBrunch ? []

  preCompile: (end) ->
    if @commands.length > 0
      for command in @commands
        exec command, (error, stdout, stderr) ->
          console.log stdout if stdout
          console.log error.message if error
          console.log stderr if stderr
          end()
    else
      end()

    return
