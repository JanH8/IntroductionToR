# generate vector size 1000 randomly of values 0 to 10
r = sample(0:10, size = 1000, replace = TRUE)

#remove elements which are 0
vec = r[r != 0]

# find odds
odds = vec[which(vec %% 2 == 1)]

# create matrix with first five odd values on the diagonal
diag(odds[1:5])