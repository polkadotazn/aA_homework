// PROMISE IT WON'T HURT

require('es6-promise');

// (1) WARMUP

// setTimeout( () => {
//   console.log('TIMED OUT!');
// }, 300);

// (2) Fulfilling a Promise

var promise = new Promise (function(fulfill, reject) {
  setTimeout( () => {
    fulfill('FULFILLED');
  }, 300);
});

promise.then(console.log);
