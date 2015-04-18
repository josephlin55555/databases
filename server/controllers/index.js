var models = require('../models');
var bluebird = require('bluebird');

module.exports = {
  messages: {
    get: function (req, res) {
      //make use of models get function
      models.messages.get(function(error, results) {
        if(error) {
          throw error;
        }
        else {
          res.json(results);
        }
      });

    }, // a function which handles a get request for all messages
    post: function (req, res) {
      var params = [req.body.message, req.body.room, req.body.user];
      models.messages.post(params, function(error, results) {
        if(error) {
          throw error;
        }
        else {
          res.sendStatus(201); //created
        }
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.messages.get(function(error, results) {
        if(error) {
          throw error;
        }
        else {
          res.json(results);
        }
      });
    },
    post: function (req, res) {
      var params = [req.body.user];
      models.messages.post(params, function(error, results) {
        if(error) {
          throw error;
        }
        else {
          res.sendStatus(201);
        }
      });
    }
  }
};

