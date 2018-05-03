var fs = require('fs');
var path = require('path');

module.exports = (pathName, ext, cb) => {
  fs.readdir(pathName, function(err, list) {
    if (err) {
      return cb(err);
    }

    list = list.filter(file => {
      return path.extname(file) === '.' + ext;
    });

    cb(null, list);
  });
};
