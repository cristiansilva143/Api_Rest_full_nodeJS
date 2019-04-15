var express = require('express');
var app = express();
var index = require('./routes/index');

app.use('/', index);

app.use(function (req, res, next) {
  res.status(200).send(data)
});

app.use(function (req, res, next) {
  res.status(404).send('URL no encontrada')
});

app.use(function (err, req, res, next) {
  console.error(err.stack)
  res.status(500).send('Something broke!')
});

app.listen(3000, function(){
    console.log('Aplicacion corriendo en el port 3000!!')
}) ; 

