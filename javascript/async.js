var http = require('http')
  , async = require('async');

var path = process.argv[2];
async.waterfall([
  function(cb){
    http.get(path, function(res) {
      console.log(res);
    });
  }
]);
