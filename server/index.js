const express = require('express');
const path = require('path');
const db = require('../database/index.js');
const call = require('../database/appcall.js');
const app = express();
const PORT = 8000;

app.use(express.json());
app.use(express.static(path.join(__dirname, '../client/dist')));

app.get('/test', (req, res) => {
  res.send('connected');
});

app.get('/allshoes', (req, res) => {
  call.selectAllShoes((err, results) => {
    if (err) {
      console.log('ERROR', err);
      res.send('fail');
    } else {
      res.status(200).send(results);
    }
  });
});

app.get('/*', (req, res) => {
  console.log(req);
  res.status(200).send('hello world');
});

app.listen(PORT, (err) => {
  if (err) {
    console.log(err);
  } else {
    console.log(`The server is listening on Port ${PORT}`);
  }
});