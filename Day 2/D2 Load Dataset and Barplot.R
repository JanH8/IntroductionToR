require(MVA)
data(USairpollution)

summary(USairpollution)

table(USairpollution$SO2)

smokerData = read.csv(file = "day2_smoker.csv")
tsmoke = table(smokerData$Smoke)

barplot(tsmoke)

smoke = table(smokerData$Smoke,smokerData$SES)
smoke

# margin distributions
margin.table(smoke, 1)
margin.table(smoke, 2)

# prop table -> relative
round(prop.table(smoke),2)

# next to each other
barplot(smoke, legend=T, beside=TRUE)

# stacked
barplot(smoke, legend=T, beside=FALSE)

plot(tsmoke)
plot.ecdf(tsmoke)
pie(tsmoke)
barplot(tsmoke)
hist(tsmoke)
boxplot(tsmoke)
persp(smoke)

par(bg="white",mar=c(5,5,3,1))
plot(USairpollution[,1:2],pch=22,cex.lab=2, cex.axis=1.5, 
     col = "red", cex=2, lwd=2, main="Myplot", cex.main=2, xaxt="n")
abline(h=60,col="orange", lwd=2)
abline(v=60, col="black", lwd=4)

plot(USairpollution[,1:2],pch=19,cex.lab=2, cex.axis=1.5, 
     col = "red", cex=2, lwd=2, ylim=range(USairpollution[,c(2,6)]), ylab="temp (red), precip (blue)")
points(USairpollution[,1],USairpollution[,6], col= "blue", pch=18, cex=1.5)

plot.ecdf(USairpollution$SO2)
median(USairpollution$SO2)
hist(USairpollution)
