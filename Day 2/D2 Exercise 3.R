electionData = data.frame(
  partyNames = c("CDU", "SPD", "Linke", "Grüne", "CSU", "FDP", "other"),
  results2013 = c(34.1, 25.7, 8.6, 8.4, 7.4, 4.8, 10.9),
  results2009 = c(27.3, 23.0, 11.9, 10.7, 6.5, 14.6, 6.0),
  colors = c(
    "black",
    "red",
    "darkred",
    "darkgreen",
    "darkgrey",
    "yellow",
    "blue"
  )
)

# display 2 plots
par(mfrow = c(1, 2))

# create barplot
barplot(
  height = rbind(electionData$results2013, electionData$results2009),
  names =  electionData$partyNames,
  ylab = "votes (in %)",
  xlab = "party",
  beside   = TRUE,
  col = rbind(electionData$colors, electionData$colors),
  density = c(100, 30),
  main = "results of the federal election"
)

# add legend
legend(
  x = "topright",
  legend = c("2013", "2009"),
  fill = c("orange", "orange"),
  density = c(100, 30),
  bty = "n",
  title = "result in"
)

# append percentages to parties (for labels in the pie chart)
pieLabels = paste(electionData$partyNames,
                  "\n(",
                  electionData$results2013,
                  "%)",
                  sep = "")

# draw pie chart
pie(
  x = electionData$results2013,
  col = electionData$colors,
  labels =  pieLabels,
  main = "result of the federal election 2013:\n(pie chart)"
)
