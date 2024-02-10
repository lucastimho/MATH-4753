# Task 1
getwd()

# Task 2
spruce.df <- read.csv("SPRUCE.csv")

## Last six lines of the data
tail(spruce.df)

# Task 3
library(s20x)

trendscatter(Height~BHDiameter,f=0.5,data=spruce.df)

spruce.lm=with(spruce.df, lm(Height~BHDiameter))

height.res=residuals(spruce.lm)

height.fit=fitted(spruce.lm)

plot(height.fit, height.res)

trendscatter(height.fit, height.res)

plot(spruce.lm, which=1)

normcheck(spruce.lm,shapiro.wilk=TRUE)

# Task 4
quad.lm=lm(Height~BHDiameter+I(BHDiameter^2),data=spruce.df)

add1(spruce.lm,.~.+I(BHDiameter^2))

plot(Height~BHDiameter,bg="Blue",pch=21,cex=1.2,ylim=c(0,max(Height)),xlim=c(0,max(BHDiameter)),main="Spruce Height Predictions",data=spruce.df)

quad.fit=fitted(quad.lm)

quad.res=residuals(quad.lm)

plot(quad.fit, quad.res)

normcheck(quad.lm,shapiro.wilk = TRUE)

# Task 5
summary(quad.lm)
summary(spruce.lm)

predict(quad.lm, data.frame(BHDiameter=c(15,18,20)))

anova(spruce.lm)
anova(quad.lm)

TSS=with(spruce.df, sum((Height-mean(Height))^2))

MSS=with(spruce.df, sum((height.fit-mean(Height))^2))

RSS=with(spruce.df, sum((Height-height.fit)^2))

TSS
MSS
RSS
MSS/TSS

# Task 6
cooks20x(quad.lm)

quad2.lm=lm(Height~BHDiameter+I(BHDiameter^2), data=spruce.df[-24,])

summary(quad2.lm)
summary(quad.lm)

# Task 7

sp2.df=within(spruce.df, X <- (BHDiameter-18) * (BHDiameter > 18))

lmp = lm(Height~BHDiameter + X, data= sp2.df)
tmp = summary(lmp)
names(tmp)

plot(spruce.df, main="Piecewise Regression")

myf = function(x,coef){
  coef[1]+coef[2]*(x) + coef[3]*(x-18)*(x-18>0)
}

myf(0, coef=tmp$coefficients[,"Estimate"])
curve(myf(x,coef=tmp$coefficients[,"Estimate"] ),add=TRUE, lwd=2,col="Blue")
abline(v=18)

# Task 8
MATH4753LHO24::myquad(10)
