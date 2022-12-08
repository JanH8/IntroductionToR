library(tidyverse)

system.time((sr = read.csv("DataSets/php4fATLZ.csv")))
system.time((st = read_csv("DataSets/php4fATLZ.csv")))

system.time((mr = read.csv(
  "DataSets/KDDCup09_churn.csv", na.strings = "?"
)))
system.time((mt = read_csv("DataSets/KDDCup09_churn.csv", na = "?")))

system.time((lr = read.csv("DataSets/cifar-10-small.csv")))
system.time((lt = read_csv("DataSets/cifar-10-small.csv")))
