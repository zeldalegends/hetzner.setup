'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World');
});

app.get('/:path', (req, res) => { // GET /test?a=b&c=1
  console.log(req.params); // {"path": "test"}
  res.json(req.query); // {"a": "b", "c": "1"}
});

const server = app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});
