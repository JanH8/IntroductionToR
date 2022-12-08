library(tidyverse)

system.time((sr = read.csv("Day 3/DataSets/php4fATLZ.csv")))
system.time((st = read_csv("Day 3/DataSets/php4fATLZ.csv")))

system.time((mr = read.csv(
  "Day 3/DataSets/KDDCup09_churn.csv", na.strings = "?"
)))
system.time((mt = read_csv("Day 3/DataSets/KDDCup09_churn.csv", na = "?")))

system.time((lr = read.csv("Day 3/DataSets/cifar-10-small.csv")))
system.time((lt = read_csv("Day 3/DataSets/cifar-10-small.csv")))
