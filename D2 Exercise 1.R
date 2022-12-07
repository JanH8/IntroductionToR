ds = state.area
names = state.name
minmax = range(ds)

# each dataset in own column
combined = cbind(ds, names)
combined[combined[,1] == minmax,]

# range
diff(minmax)

median(ds)

quartiles = quantile(ds, c(0.25,0.75))
quartiles

iqrange = diff(quantiles)
iqrange
