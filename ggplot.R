require(ggplot2, quiet = TRUE)
data(diamonds)
ds = subset(diamonds, color %in% c("F", "G", "H", "I"))
set.seed(123)
ids = sample(1:nrow(ds), size = 200L, replace = FALSE)
ds = ds[ids, ]
head(ds, n = 6L)

pl = ggplot(data = ds,
            mapping = aes(
              x = carat,
              y = price,
              color = cut,
              shape = color
            ))
pl + geom_point()
