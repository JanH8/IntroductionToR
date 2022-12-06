cars = mtcars
cars$speed = ""

fast = which(cars$hp > 120)

cars$speed[fast] = "fast"
cars$speed[-fast] = "slow"