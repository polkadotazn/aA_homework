// "Learn you node"

var fs = require('fs');
var path = require('path');
var mymodule = require('./module.js');
var http = require('http');

// (1) HELLO WORLD

// console.log("HELLO WORLD");


// (2) BABY STEPS

// let arr = process.argv;
// function sum(nums) {
//   nums = arr.slice(2);
//   let total = 0;
//   nums.forEach(num => {
//     total += Number(num);
//   });
//   console.log(total);
// }
//
// sum();

// *official answer*
    // var result = 0
    //
    // for (var i = 2; i < process.argv.length; i++) {
    //   result += Number(process.argv[i])
    // }
    //
    // console.log(result)
// *official answer*

// (3) MY FIRST I/O!
// var buf = fs.readFileSync(process.argv[2]);
// console.log(buf.toString().split('\n').length - 1);

// *official answer*
    // var fs = require('fs')
    //
    // var contents = fs.readFileSync(process.argv[2])
    // var lines = contents.toString().split('\n').length - 1
    // console.log(lines)

    // note you can avoid the .toString() by passing 'utf8' as the
    // second argument to readFileSync, then you'll get a String!
    //
    // fs.readFileSync(process.argv[2], 'utf8').split('\n').length - 1
// *official answer*

// (4) MY FIRST ASYNC I/O!

// fs.readFile(process.argv[2], 'utf8', function (err, data) {
//   if (err) throw err;
//   console.log(data.split('\n').length - 1);
// });

// (5) FILTERED LS

// var pathName = process.argv[2];
// var ext = process.argv[3];
//
// fs.readdir(pathName, function(err, list) {
//   if (err) throw err;
//   list.forEach(file => {
//     if (path.extname(file) === ext) {
//       console.log(file);
//     }
//   });
// });

// (6) MAKE IT MODULAR

// var pathName = process.argv[2];
// var ext = process.argv[3];

// mymodule(pathName, ext, function(err, list) {
//   if (err) {
//     return console.error('There was an error');
//   }
//
//   list.forEach(file => {
//     console.log(file);
//   });
// });


// (7) HTTP CLIENT

// var url = process.argv[2];
// var req = http.get(url, function(response) {
//   response = response.setEncoding('utf8');
//   response.on("data", function(data) {
//     console.log(data);
//   });
// });


// (8) HTTP COLLECT

// var url = process.argv[2];
//
// var charCount = 0;
// var str = "";

// http.get(url, response => {
//   response.setEncoding('utf8');
//   response.on("data", function(data) {
//     charCount += data.split('').length;
//     str += data;
//   });
//   response.on("end", (end) => {
//     console.log(charCount);
//     if (str === "") {
//       console.log(null);
//     } else {
//       console.log(str);
//     }
//   });
// });


// (0) JUGGLING ASYNC

var url1 = process.argv[2];
var url2 = process.argv[3];
var url3 = process.argv[4];




































// .
