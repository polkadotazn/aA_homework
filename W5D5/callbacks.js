window.setTimeout( function cb() {
  alert('HAMMERTIME');
}, 5000);

function hammerTime(time) {
  window.setTimeout( function () {
  alert(`${time} is hammertime!`);
},time);
}

hammerTime(3000);
