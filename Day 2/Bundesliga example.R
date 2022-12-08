bundesliga = read.csv(
  "Day 2/Bundesliga22_Halbzeit.csv",
  sep = ";",
  stringsAsFactors = TRUE,
  colClasses = c(
    "numeric",
    "factor",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric",
    "numeric"
  ),
  dec = ","
)
bundesliga
summary(bundesliga)

plot(bundesliga)

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
panel.cor = function(x,
                     y,
                     digits = 2,
                     prefix = " ",
                     ...)
{
  usr = par("usr")
  on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r = round(cor(x, y), digits = digits)
  txt = format(r, digits = digits)
  txt = paste(prefix, txt, sep = " ")
  text(0.5, 0.5, txt, cex = 0.8 *r, col = "blue")
}

# definition of the panels
panel = function (x, y, ...) {
  points(x, y, ...)
  abline(lm(y ~ x), col = "blue")
}

# print the diagrams
pairs(
  bundesliga[,-c(2:3)],
  #panel = panel,
  pch = 19,
  cex.labels = 2,
  cex.axis = 2,
  diag.panel = panel.hist,
  upper.panel = panel.cor
)
