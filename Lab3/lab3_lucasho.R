# Task 1
getwd()

# Task 2
spruce.df <- read.csv("SPRUCE.csv")

head(spruce.df)

# Task 3
layout(matrix(1:4,nr=2,nc=2,byrow=TRUE))
with(spruce.df, plot(Height~BHDiameter, bg="Blue",pch=21, cex=1.2, xlim=(c(0, 1.1*max(BHDiameter))), ylim=(c(0, 1.1*max(Height)))))

library(s20x)

trendscatter(Height~BHDiameter,f=0.5,data=spruce.df)

trendscatter(Height~BHDiameter,f=0.6,data=spruce.df)

trendscatter(Height~BHDiameter,f=0.7,data=spruce.df)

spruce.lm=with(spruce.df, lm(Height~BHDiameter))

abline(spruce.lm)

# Task 4
layout(matrix(1:4,nr=2,nc=2,byrow=TRUE))
layout.show(4)

with(spruce.df, plot(Height~BHDiameter, bg="Blue",pch=21, cex=1.2, xlim=(c(0, 1.1*max(BHDiameter))), ylim=(c(0, 1.1*max(Height)))))
abline(spruce.lm)

with(spruce.df, plot(Height~BHDiameter, bg="Blue",pch=21, cex=1.2, xlim=(c(0, 1.1*max(BHDiameter))), ylim=(c(0, 1.1*max(Height)))))
yhat=fitted(spruce.lm)
with(spruce.df, segments(BHDiameter,Height, BHDiameter, yhat))
abline(spruce.lm)

with(spruce.df, plot(Height~BHDiameter, bg="Blue",pch=21, cex=1.2, xlim=(c(0, 1.1*max(BHDiameter))), ylim=(c(0, 1.1*max(Height)))))
with(spruce.df, abline(h=mean(Height)))
abline(spruce.lm)
with(spruce.df, segments(BHDiameter,mean(Height),BHDiameter,yhat,col="Red"))

with(spruce.df, plot(Height~BHDiameter, bg="Blue",pch=21, cex=1.2, xlim=(c(0, 1.1*max(BHDiameter))), ylim=(c(0, 1.1*max(Height)))))
with(spruce.df, abline(h=mean(Height)))
with(spruce.df, segments(BHDiameter,Height,BHDiameter,mean(Height),col="Green"))

TSS=with(spruce.df,sum((Height-mean(Height))^2))
MSS=with(spruce.df, sum((yhat-mean(Height))^2))
RSS=with(spruce.df, sum((Height-yhat)^2))

TSS
MSS
RSS

MSS/TSS

TSS
MSS+RSS

# Task 5
summary(spruce.lm)

predict(spruce.lm, data.frame(BHDiameter=c(15,18,20)))

# Task 6
library(ggplot2)
g=ggplot(spruce.df, aes(y=Height, x=BHDiameter,colour=BHDiameter))
g=g+geom_point()+geom_line()+geom_smooth(method="lm")
g+ggtitle("Height vs BHDiameter")
