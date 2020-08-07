var mysql = require('mysql');
var mysqlConfig = require('./config.js');

var connection = mysql.createConnection(mysqlConfig);

var getAllShoes = function(callback) {
  connection.query(`SELECT * FROM shoes;`, (err, rows, fields)=> {
    if (err) {
      callback(err)
      //res.send(rows)
    } else {
      callback(rows)
    }
  })
};



module.exports.getAllShoes = getAllShoes;