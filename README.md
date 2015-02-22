## before-brunch

## Usage
Add `"before-brunch": "x.y.z"` to `package.json` of your brunch app.
Or `npm install before-brunch --save`.

Then in your `config.coffee` just add any commands to the beforeBrunch array.
For example, you might want to use styledocco to create a live styleguide of your stylesheets.

```coffeescript
exports.config =
  …
  plugins:
    beforeBrunch: [
      'echo "Prepare for compile\!"'
    ]
```
