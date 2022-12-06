# show structure of x
str(x)

# list objects
ls()

# remove object from the workspace
rm(x)

# clear whole workspace
rm(list = ls())

x = c(1, 3, 2, 4) # combine

# specific sequences
x = 7:12
x = 15:10
x = seq(1, 4, by = 0.25)
x = seq(1,-2, by = -0.5)
x = seq(10, 20, length.out = 100)

# vectors with repeating sequences
x = rep (5, 10)
x = rep(4:6, 1:3)
x = rep(4:6, 3)
x = rep(4:6, each = 3)

# combine different approaches
x = c(7.3, rep(seq(1, 2, length.out = 3), 4:2))

z = 4L # L stands for integer

is.numeric(z)
as.numeric(z)

(c(1,2,3) * c(2,3,4) == c(2,6,12))
c(1,2,3) %*% c(2,3,4) == 20

y = c(3,6,4,8, 3, 4, 0)
sort(y)
order(y)
rank(y)
