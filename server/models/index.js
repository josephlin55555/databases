var db = require('../db');



module.exports = {
  messages: {
    get: function (callback) {
      var queryStr = "select messages.id, messages.text, messages.roomname, users.username \
                      from messages left outer join users on (messages.userid = users.id) \
                      order by messages.id desc";
      db.query(queryStr, function(error, results) {
        callback(error, results);
      });

    }, // a function which produces all the messages
    post: function (params, callback) {
      var queryStr = "insert into messages(text, userid, roomname) \
                      value (?, (select id from users where username = ? limit 1), ?)";
      db.query(queryStr, params, function(error, results) {
        callback(error, results);
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      var queryStr = "select * from users";
      db.query(queryStr, function(error, results) {
        callback(error, results);
      });
    },
    post: function (params, callback) {
      var queryStr = "insert into users(username) values (?)";
      db.query(queryStr, params, function(error, results) {
        callback(error, results);
      });
    }
  }
};

