These are instructions to quickly set up webpack-dev-server

# Instructions

```
# Create new project
mkdir NEW_PROJECT
cd NEW_PROJECT
mkdir src
touch src/index.js

# Install dependencies
npm i -D webpack webpack-cli webpack-dev-server html-webpack-plugin

# Set up configurations. See below for file contents
touch webpack.config.js

# Set up package.json. See below for file contents
npm init -y
```

```js
// webpack.config.js

const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './src/index.js',
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'dist')
  },
  devtool: 'inline-source-map',
  devServer: {
    contentBase: './dist'
  },
  plugins: [
    new HtmlWebpackPlugin()
  ],
};

```

```js
// package.json

{
  // ...
  "scripts": {
    "start": "webpack serve --open 'Google Chrome'"
  },
  // ...
}

```

## References
[Webpack docs](https://webpack.js.org/guides/development/#choosing-a-development-tool)
