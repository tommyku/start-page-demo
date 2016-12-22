module.exports = {
  context: __dirname + '/src',
  entry: __dirname + '/src/js/main.coffee',
  output: {
    path: 'output',
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      { test: /\.scss$/, loader: "style-loader!css-loader!sass-loader" },
      { test: /\.coffee$/, loader: "coffee-loader" },
    ]
  }
};
