'use strict';

const express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

const app = express();

app.get('/:path', (req, res) => { // GET /test?a=b&c=1
  console.log("Headers: " + JSON.stringify(req.headers, null, 3)); // {...}
  console.log("Body: " + JSON.stringify(req.body, null, 3)); // {}
  console.log("Path: " + req.params.path); // "test"
  console.log("Query: " + JSON.stringify(req.query, null, 3)); // "test"
  res.json(req.query); // {"a": "b", "c": "1"}
});

app.get('/*', (req, res) => {
  res.send('<h2 style="color: blue">Usage: <code>http://' + req.headers.host + '/<i>path</i>?<i>query</i></code></h2>' +
           '<h3>Example: <a href="/test?a=b&c=1"><code>http://' + req.headers.host + '/test?a=b&c=1</code></a></h3>');
});

const server = app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});
