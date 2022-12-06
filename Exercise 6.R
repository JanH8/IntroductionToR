psum = function(n, a) {
  k = 0:n
  return(sum(k ^ a / (k ^ a + 1)))
}

psum(80, 2)
