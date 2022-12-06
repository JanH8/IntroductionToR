fibRecursive = function(n) {
  if (n > 2) {
    return(fibRecursive(n - 1) + fibRecursive(n - 2))
  } else {
    return(1)
  }
}

fibIterative = function(n) {
  fib = 1:n
  fib[fib <= 2] = 1
  if (n > 2) {
    for (c in 3:n) {
      fib[c] = fib[c - 1] + fib[c - 2]
    }
  }
  return(fib[n])
}

fibIterative(2)
fibIterative(1)

fibRecursive(5)
fibIterative(5)

fibIterative(10)
fibRecursive(10)

fibIterative(15)
fibRecursive(15)

fibIterative(58)
# fibRecursive(58) not computable efficiently!
