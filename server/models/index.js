var db = require('../db');



module.exports = {
  messages: {
    get: function () {
      db.connection.connect();
      db.connection.query('SELECT * from message', function(error, results) {
        if(error) {
          console.log(error);
        }

        return results; //array
      });
      db.connection.end();

    }, // a function which produces all the messages
    post: function () {

    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {

    },
    post: function () {

    }
  }
};

