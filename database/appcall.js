const db = require('./index.js');

module.exports = {
  selectAllShoes: function(callback) {
    db.connection.query('SELECT * FROM shoes;', (err, rows, fields) => {
      callback(err, rows);
    }
    );
  }

};

[
  {
      "id": 1,
      "SKU": "SKU001"
  },
  {
      "id": 2,
      "SKU": "SKU002"
  },
  {
      "id": 3,
      "SKU": "SKU003"
  },
  {
      "id": 4,
      "SKU": "SKU004"
  },
  {
      "id": 5,
      "SKU": "SKU005"
  },
  {
      "id": 6,
      "SKU": "SKU006"
  },
  {
      "id": 7,
      "SKU": "SKU007"
  },
  {
      "id": 8,
      "SKU": "SKU008"
  },
  {
      "id": 9,
      "SKU": "SKU009"
  },
  {
      "id": 10,
      "SKU": "SKU010"
  },
  {
      "id": 11,
      "SKU": "SKU011"
  },
  {
      "id": 12,
      "SKU": "SKU012"
  },
  {
      "id": 13,
      "SKU": "SKU013"
  },
  {
      "id": 14,
      "SKU": "SKU014"
  },
  {
      "id": 15,
      "SKU": "SKU015"
  },
  {
      "id": 16,
      "SKU": "SKU016"
  },
  {
      "id": 17,
      "SKU": "SKU017"
  },
  {
      "id": 18,
      "SKU": "SKU018"
  },
  {
      "id": 19,
      "SKU": "SKU019"
  },
  {
      "id": 20,
      "SKU": "SKU020"
  },
  {
      "id": 21,
      "SKU": "SKU021"
  },
  {
      "id": 22,
      "SKU": "SKU022"
  },
  {
      "id": 23,
      "SKU": "SKU023"
  },
  {
      "id": 24,
      "SKU": "SKU024"
  },
  {
      "id": 25,
      "SKU": "SKU025"
  },
  {
      "id": 26,
      "SKU": "SKU026"
  },
  {
      "id": 27,
      "SKU": "SKU027"
  },
  {
      "id": 28,
      "SKU": "SKU028"
  },
  {
      "id": 29,
      "SKU": "SKU029"
  },
  {
      "id": 30,
      "SKU": "SKU030"
  },
  {
      "id": 31,
      "SKU": "SKU031"
  },
  {
      "id": 32,
      "SKU": "SKU032"
  },
  {
      "id": 33,
      "SKU": "SKU033"
  },
  {
      "id": 34,
      "SKU": "SKU034"
  },
  {
      "id": 35,
      "SKU": "SKU035"
  },
  {
      "id": 36,
      "SKU": "SKU036"
  },
  {
      "id": 37,
      "SKU": "SKU037"
  },
  {
      "id": 38,
      "SKU": "SKU038"
  },
  {
      "id": 39,
      "SKU": "SKU039"
  },
  {
      "id": 40,
      "SKU": "SKU040"
  },
  {
      "id": 41,
      "SKU": "SKU041"
  },
  {
      "id": 42,
      "SKU": "SKU042"
  },
  {
      "id": 43,
      "SKU": "SKU043"
  },
  {
      "id": 44,
      "SKU": "SKU044"
  },
  {
      "id": 45,
      "SKU": "SKU045"
  },
  {
      "id": 46,
      "SKU": "SKU046"
  },
  {
      "id": 47,
      "SKU": "SKU047"
  },
  {
      "id": 48,
      "SKU": "SKU048"
  },
  {
      "id": 49,
      "SKU": "SKU049"
  },
  {
      "id": 50,
      "SKU": "SKU050"
  },
  {
      "id": 51,
      "SKU": "SKU051"
  },
  {
      "id": 52,
      "SKU": "SKU052"
  },
  {
      "id": 53,
      "SKU": "SKU053"
  },
  {
      "id": 54,
      "SKU": "SKU054"
  },
  {
      "id": 55,
      "SKU": "SKU055"
  },
  {
      "id": 56,
      "SKU": "SKU056"
  },
  {
      "id": 57,
      "SKU": "SKU057"
  },
  {
      "id": 58,
      "SKU": "SKU058"
  },
  {
      "id": 59,
      "SKU": "SKU059"
  },
  {
      "id": 60,
      "SKU": "SKU060"
  },
  {
      "id": 61,
      "SKU": "SKU061"
  },
  {
      "id": 62,
      "SKU": "SKU062"
  },
  {
      "id": 63,
      "SKU": "SKU063"
  },
  {
      "id": 64,
      "SKU": "SKU064"
  },
  {
      "id": 65,
      "SKU": "SKU065"
  },
  {
      "id": 66,
      "SKU": "SKU066"
  },
  {
      "id": 67,
      "SKU": "SKU067"
  },
  {
      "id": 68,
      "SKU": "SKU068"
  },
  {
      "id": 69,
      "SKU": "SKU069"
  },
  {
      "id": 70,
      "SKU": "SKU070"
  },
  {
      "id": 71,
      "SKU": "SKU071"
  },
  {
      "id": 72,
      "SKU": "SKU072"
  },
  {
      "id": 73,
      "SKU": "SKU073"
  },
  {
      "id": 74,
      "SKU": "SKU074"
  },
  {
      "id": 75,
      "SKU": "SKU075"
  },
  {
      "id": 76,
      "SKU": "SKU076"
  },
  {
      "id": 77,
      "SKU": "SKU077"
  },
  {
      "id": 78,
      "SKU": "SKU078"
  },
  {
      "id": 79,
      "SKU": "SKU079"
  },
  {
      "id": 80,
      "SKU": "SKU080"
  },
  {
      "id": 81,
      "SKU": "SKU081"
  },
  {
      "id": 82,
      "SKU": "SKU082"
  },
  {
      "id": 83,
      "SKU": "SKU083"
  },
  {
      "id": 84,
      "SKU": "SKU084"
  },
  {
      "id": 85,
      "SKU": "SKU085"
  },
  {
      "id": 86,
      "SKU": "SKU086"
  },
  {
      "id": 87,
      "SKU": "SKU087"
  },
  {
      "id": 88,
      "SKU": "SKU088"
  },
  {
      "id": 89,
      "SKU": "SKU089"
  },
  {
      "id": 90,
      "SKU": "SKU090"
  },
  {
      "id": 91,
      "SKU": "SKU091"
  },
  {
      "id": 92,
      "SKU": "SKU092"
  },
  {
      "id": 93,
      "SKU": "SKU093"
  },
  {
      "id": 94,
      "SKU": "SKU094"
  },
  {
      "id": 95,
      "SKU": "SKU095"
  },
  {
      "id": 96,
      "SKU": "SKU096"
  },
  {
      "id": 97,
      "SKU": "SKU097"
  },
  {
      "id": 98,
      "SKU": "SKU098"
  },
  {
      "id": 99,
      "SKU": "SKU099"
  },
  {
      "id": 100,
      "SKU": "SKU100"
  }
]