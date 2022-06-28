var express = require('express');
var fs = require('fs');

const swaggerUI  = require('swagger-ui-express');
const swaggerDoc = require('./swagger.json');

app = express();
app.use('/api-docs', swaggerUI.serve, swaggerUI.setup(swaggerDoc));
var msg = process.env.APP_MSG;

app.get('/', function (req, res) {
  res.send('Simple app  version 2 for the Building Applications Lab!\n');
});

app.get('/mounts/:key', function (req, res) {
  let response = '';
  fs.readFile('/opt/app-root/' + req.params.key, 'utf8', (err, line)=> {
    if (err) {
      console.log(err + '\n');
      response += err + '\n';
    }
    else {
      response += line + '\n';
    }
    res.send(response);
  });
});

app.listen(8080, function () {
  console.log('Simple app for the Building Applications Lab!');
});

