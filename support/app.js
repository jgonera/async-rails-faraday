var app = require('express').createServer();

app.get('/', function(req, res) {
  setTimeout(function() {
    res.send('Hello World');
  }, 500);
});

app.listen(4000);
