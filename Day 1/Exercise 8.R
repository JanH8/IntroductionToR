# fair coin, exactly 6x head, 10 tosses
dbinom(6, 10, 0.5)

# fair coin, min 4x head, 10 tosses
# 1 - P( < 4 Heads)
1 - pbinom(3, 10, 0.5)
