function madLib(verb, adj, noun) {
  let word1 = verb.toUpperCase();
  let word2 = adj.toUpperCase();
  let word3 = noun.toUpperCase();
  console.log(`We shall ${word1} the ${word2} ${word3}`);
}

madLib("grok", "iridescent", "fractals");


// Closures

function dinerBreakfast() {

}

function isprime(num) {

  for (let i = 2; i < num; i++) {
    if (num % i === 0) return false;
  }
  return true;
}
