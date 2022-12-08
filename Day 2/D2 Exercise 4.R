# definition of histogram panels
panel.hist = function(x, ...)
{
  usr = par("usr")
  on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5))
  h = hist(x, plot = FALSE)
  breaks = h$breaks
  nB = length(breaks)
  y = h$counts
  y = y / max(y)
  rect(breaks[-nB], 0, breaks[-1], y, col = "red", ...)
}

# definition of correlation panels
panel.cor = function(x, y,digits = 2, prefix = " ",...)
{
  usr = par("usr")
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r = round(cor(x, y, method = "spearman"), digits = digits)
  txt = format(r, digits = digits)
  txt = paste(prefix, txt, sep = " ")
  text(0.5, 0.5, txt, cex = 2, col = "blue")
}

# definition of the panels
panel = function (x, y, ...) {
  points(x, y, ...)
  abline(lm(y ~ x), col = "blue")
}

# print the diagrams
pairs(
  USairpollution,
  panel = panel,
  pch = 19,
  cex.labels = 2,
  cex.axis = 2,
  diag.panel = panel.hist,
  upper.panel = panel.cor
)
