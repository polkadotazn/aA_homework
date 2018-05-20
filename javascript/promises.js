// PROMISE IT WON'T HURT

require('es6-promise');

// (1) WARMUP

// setTimeout( () => {
//   console.log('TIMED OUT!');
// }, 300);

// (2) Fulfilling a Promise / (3) Rejecting a Promise

// var promise = new Promise (function(fulfill, reject) {
//   setTimeout( () => {
//     reject(new Error('REJECTED!'));
//   }, 300);
// });
//
// function onReject(error) {
//   console.log(error.message);
// }
//
// promise.then(console.log, onReject);

// (4) To reject or not to reject

// var promise = new Promise (function(fulfill, reject) {
//   fulfill('I FIRED');
//   reject(new Error('I DID NOT FIRE'));
// });
//
// function onRejected(error) {
//   console.log(error.message);
// }
//
// promise.then(console.log, onRejected);

// (5) Always asynchronous

// var promise = new Promise (function(fulfill, reject) {
//   fulfill('PROMISE VALUE');
// });
//
//
// promise.then(console.log);
// console.log("MAIN PROGRAM");


// (6) Shortcuts
//
// var message;
// var promise;
//
// promise = Promise.resolve('Secret val');
//
// promise.catch(err => {
//   console.error('error');
// });


// (7) Promise after promise

// first().then(second).then(console.log);

// (8) Values and promises

var attachTitle = function(firstargument) {
  return `DR. ${firstargument}`;
};

Promise.resolve('MANHATTAN').then(attachTitle).then(console.log);











































//
