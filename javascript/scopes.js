function foo() {
  var bar;
  quux = 3;
  function zip() {
    var quux = 0;
    bar = true;
  }
  return zip;
}
