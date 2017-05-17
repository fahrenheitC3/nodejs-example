'use strict';
var hello = process.env.HELLO;
const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
app.get('/', function (req, res) {
  res.sendfile('test.html');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
