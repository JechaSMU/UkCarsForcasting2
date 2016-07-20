library(fpp) #fpp package must be installed first

data(elecequip)
plot(elecequip)
length(elecequip)/3

fitd <- decompose(elecequip)
plot(fitd)

eeadj <- seasadj(fitd)
plot(eeadj)

elecequip2 <- ts(elecequip,start=c(1978,1),frequency=12)
plot(elecequip2)

elecequip3 <- ts(c(elecequip[1:54],elecequip[55]+200,elecequip[56:191]),start=c(1978,1),frequency=12)
plot(elecequip3)

elecequip4 <- ts(c(elecequip[1:191],elecequip[55]+200),start=c(1978,1),frequency=12)
plot(elecequip4)

elecstl <- stl(elecequip, s.window="periodic")
plot(elecstl)

plot(elecequip, col="gray",
     main="Electrical equipment manufacturing",
     ylab="New orders index", xlab="")
lines(elecstl$time.series[,2],col="red",ylab="Trend")



elecstl$time.series
