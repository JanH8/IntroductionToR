df1 = data.frame(
  product = c("milk", "eggs", "cheese"),
  price = c(0.69, 2.49, 3.78),
  stock = c(25L, 38L, 4L),
  reorder = c(FALSE, FALSE, TRUE)
)

df1

df2 = data.frame(
  product = c("milk", "eggs", "cheese"),
  price = c(0.69, 2.49, 3.78),
  stock = c(25L, 38L, 4L),
  reorder = c(FALSE, FALSE, TRUE),
  stringsAsFactors = FALSE
)# previous line is a small, but important detail
