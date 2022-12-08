set.seed(123)

# find 95% quantile
qnorm(0.95, 5, 2)

variables = replicate(1000, rnorm(10000, mean = 5, sd = 2))
quantiles = apply(variables, 2, quantile, probs = c(0.95))
mean(quantiles)

