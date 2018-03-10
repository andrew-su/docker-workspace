'use strict';

var path = require('path');

module.exports = {
  entry: {
  	main: './src/main.js'
  },
  target: 'node',
  output: {
    path: path.join(__dirname, 'build'),
    filename: '[name].js'
  }
}	