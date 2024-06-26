# Task 1
getwd()

# Task 2
layout(matrix(1:4, nr=2,nc=2))

curve(dnorm(x, mean=10,sd=4),xlim=c(-2,22))
curve(dnorm(x, mean=10,sd=2),xlim=c(4,16))
curve(dnorm(x, mean=5,sd=10),xlim=c(-25,35))
curve(dnorm(x, mean=5,sd=1/2),xlim=c(3.5,6.5))

par(mfrow=c(1,1))

curve(dnorm(x, mean=0, sd=1), xlim=c(-3, 3))
xcurve=seq(2, 4, length=1000)
ycurve=dnorm(xcurve, mean=0, sd=1)
polygon(c(2,xcurve,4),c(0,ycurve,0),col="Red")
prob = round(pnorm(3,mean=0,sd=1)-pnorm(2,mean=0,sd=1), 4)
print(prob)

curve(dnorm(x, mean=4, sd=2), xlim=c(-2, 10))
xcurve=seq(1, 5, length=1000)
ycurve=dnorm(xcurve, mean=4, sd=2)
polygon(c(1,xcurve,5),c(0,ycurve,0),col="Red")
prob = round(pnorm(5,mean=4,sd=2)-pnorm(1,mean=4,sd=2), 4)
print(prob)

curve(dnorm(x, mean=10, sd=4), xlim=c(-2, 22))
xcurve=seq(-2, 10, length=1000)
ycurve=dnorm(xcurve, mean=10, sd=4)
polygon(c(-2,xcurve,10),c(0,ycurve,0),col="Red")
prob = round(pnorm(10,mean=10,sd=4)-pnorm(-2,mean=10,sd=4), 4)
print(prob)

curve(dnorm(x, mean=-2, sd=1/2), xlim=c(-3.5, -0.5))
xcurve=seq(-3, -2, length=1000)
ycurve=dnorm(xcurve, mean=-2, sd=1/2)
polygon(c(-3,xcurve,-2),c(0,ycurve,0),col="Red")
prob = round(pnorm(-2,mean=-2,sd=1/2)-pnorm(-3,mean=-2,sd=1/2), 4)
print(prob)

# Task 3
x <- seq(0, 10, 0.1)
plot(x, dgamma(x, shape=1,scale=1), xlim=c(0,10), ylim=c(0,1), type = "l", col="Blue", lwd=2, ylab="Gamma Density")
lines(x, dgamma(x, shape=3,scale=1), col="Red", lwd=2)
lines(x, dgamma(x, shape=5,scale=1), col="Green", lwd=2)
legend("topright", legend = c("Shape=1,Scale=1", "Shape=3,Scale=1", "Shape=5,Scale=1"), col=c("Blue","Red","Green"), lwd=2)

curve(dgamma(x, shape=3,scale=2), xlim=c(0,20), ylim=c(0,0.15), lwd=2, ylab="Gamma Density", main="Shape = 3, Scale = 2")
xcurve = seq(2, 5, length=1000)
ycurve=dgamma(xcurve, shape=3, scale=2)
polygon(c(2, xcurve, 5),c(0,ycurve,0), col="Red")
prob = round(pgamma(5, shape=3, scale=2) - pgamma(2, shape=3,scale=2), 4)
print(prob)

curve(dgamma(x, shape=6,scale=3), xlim=c(0,40), ylim=c(0,0.08), lwd=2, ylab="Gamma Density", main="Shape = 6, Scale = 3")
xcurve = seq(1, 4, length=1000)
ycurve=dgamma(xcurve, shape=6, scale=3)
polygon(c(1, xcurve, 4),c(0,ycurve,0), col="Red")
prob = round(pgamma(4, shape=6, scale=3) - pgamma(1, shape=6,scale=3), 4)
print(prob)

curve(dgamma(x, shape=2,scale=4), xlim=c(0,30), ylim=c(0,0.1), lwd=2, ylab="Gamma Density", main="Shape = 2, Scale = 4")
xcurve = seq(3, 6, length=1000)
ycurve=dgamma(xcurve, shape=2, scale=4)
polygon(c(3, xcurve, 6),c(0,ycurve,0), col="Red")
prob = round(pgamma(6, shape=2, scale=4) - pgamma(3, shape=2,scale=4), 4)
print(prob)

# Task 4
layout(matrix(1:4, nr=2,nc=2))

curve(dchisq(x,df=1),xlim=c(0,10),ylim=c(0,1),lwd=2,
      ylab="Chisq density", main="df=1")
curve(dchisq(x,df=2),xlim=c(0,10),ylim=c(0,1),lwd=2,
      ylab="Chisq density", main="df=2")
curve(dchisq(x,df=4),xlim=c(0,10),ylim=c(0,0.5),lwd=2,
      ylab="Chisq density", main="df=4")
curve(dchisq(x,df=20),xlim=c(0,40),ylim=c(0,0.1),lwd=2,
      ylab="Chisq density", main="df=20")

par(mfrow=c(1,1))

curve(dchisq(x,df=2),xlim=c(0,10),ylim=c(0,1),lwd=2,
      ylab="Chisq density", main="df=2")
xcurve = seq(2, 4, length=1000)
ycurve = dchisq(xcurve, df=2)
polygon(c(2, xcurve, 4), c(0,ycurve,0), col="Red")
prob = round(pchisq(4, df=2) - pchisq(2, df=2), 4)
print(prob)

curve(dchisq(x,df=3),xlim=c(0,10),ylim=c(0,0.4),lwd=2,
      ylab="Chisq density", main="df=3")
xcurve = seq(3, 5, length=1000)
ycurve = dchisq(xcurve, df=3)
polygon(c(3, xcurve, 5), c(0,ycurve,0), col="Red")
prob = round(pchisq(5, df=3) - pchisq(3, df=3), 4)
print(prob)

curve(dchisq(x,df=20),xlim=c(0,40),ylim=c(0,0.1),lwd=2,
      ylab="Chisq density", main="df=2")
xcurve = seq(10, 21, length=1000)
ycurve = dchisq(xcurve, df=20)
polygon(c(10, xcurve, 21), c(0,ycurve,0), col="Red")
prob = round(pchisq(21, df=20) - pchisq(10, df=20), 4)
print(prob)

# Task 5
layout(matrix(1:4, nr=2,nc=2))

curve(dgamma(x, shape=1,scale=1), xlim=c(0,5), ylim=c(0,1), lwd=2, ylab="Weibull Density", main="Shape=1,Scale=1")
curve(dgamma(x, shape=3,scale=1), xlim=c(0,10), ylim=c(0,0.4), lwd=2, ylab="Weibull Density", main="Shape=3,Scale=1")
curve(dgamma(x, shape=5,scale=1), xlim=c(0,10), ylim=c(0,0.3), lwd=2, ylab="Weibull Density", main="Shape=5,Scale=1")
curve(dgamma(x, shape=3,scale=4), xlim=c(0,30), ylim=c(0,0.2), lwd=2, ylab="Weibull Density", main="Shape=3,Scale=4")

par(mfrow=c(1,1))

curve(dweibull(x, shape=3,scale=2), xlim=c(0,5), ylim=c(0,0.8), lwd=2, ylab="Weibull Density", main="Shape = 3, Scale = 2")
xcurve = seq(2, 5, length=1000)
ycurve=dweibull(xcurve, shape=3, scale=2)
polygon(c(2, xcurve, 5),c(0,ycurve,0), col="Red")
prob = round(pweibull(5, shape=3, scale=2) - pweibull(2, shape=3,scale=2), 4)
print(prob)

curve(dweibull(x, shape=6,scale=3), xlim=c(0,5), ylim=c(0,1), lwd=2, ylab="Weibull Density", main="Shape = 6, Scale = 3")
xcurve = seq(1, 3, length=1000)
ycurve=dweibull(xcurve, shape=6, scale=3)
polygon(c(1, xcurve, 3),c(0,ycurve,0), col="Red")
prob = round(pweibull(3, shape=6, scale=3) - pweibull(1, shape=6,scale=3), 4)
print(prob)

curve(dweibull(x, shape=2,scale=4), xlim=c(0,10), ylim=c(0,0.3), lwd=2, ylab="Weibull Density", main="Shape = 2, Scale = 4")
xcurve = seq(3, 6, length=1000)
ycurve=dweibull(xcurve, shape=2, scale=4)
polygon(c(3, xcurve, 6),c(0,ycurve,0), col="Red")
prob = round(pweibull(6, shape=2, scale=4) - pweibull(3, shape=2,scale=4), 4)
print(prob)

# Task 6
layout(matrix(1:4, nr=2,nc=2))

curve(dbeta(x, shape1=1,shape2=2), xlim=c(0,2), ylim=c(0,1.5), lwd=2, ylab="Beta Density", main="Shape1=1,Shape2=2")
curve(dbeta(x, shape1=3,shape2=1), xlim=c(0,2), ylim=c(0,5), lwd=2, ylab="Beta Density", main="Shape1=3,Shape2=1")
curve(dbeta(x, shape1=5,shape2=1), xlim=c(0,2), ylim=c(0,5), lwd=2, ylab="Beta Density", main="Shape1=5,Shape2=1")
curve(dbeta(x, shape1=3,shape2=4), xlim=c(0,1), ylim=c(0,3), lwd=2, ylab="Beta Density", main="Shape1=3,Shape2=4")

par(mfrow=c(1,1))

curve(dbeta(x, shape1=3,shape2=2), xlim=c(0,2), ylim=c(0,3), lwd=2, ylab="Beta Density", main="Shape1=3, Shape2=2")
xcurve = seq(0.5, 1, length=1000)
ycurve=dbeta(xcurve, shape1=3, shape2=2)
polygon(c(0.5, xcurve, 1),c(0,ycurve,0), col="Red")
prob = round(pbeta(1, shape1=3, shape2=2) - pbeta(0.5, shape1=3,shape2=2), 4)
print(prob)

curve(dbeta(x, shape1=6,shape2=3), xlim=c(0,2), ylim=c(0,3), lwd=2, ylab="Beta Density", main="Shape1=6, Shape2=3")
xcurve = seq(0.5, 0.75, length=1000)
ycurve=dbeta(xcurve, shape1=6, shape2=3)
polygon(c(0.5, xcurve, 0.75),c(0,ycurve,0), col="Red")
prob = round(pbeta(0.75, shape1=6, shape2=3) - pbeta(0.5, shape1=6,shape2=3), 4)
print(prob)

curve(dbeta(x, shape1=2,shape2=4), xlim=c(0,2), ylim=c(0,3), lwd=2, ylab="Beta Density", main="Shape1=2, Shape2=4")
xcurve = seq(0, 0.25, length=1000)
ycurve=dbeta(xcurve, shape1=2, shape2=4)
polygon(c(0, xcurve, 0.25),c(0,ycurve,0), col="Red")
prob = round(pbeta(0.25, shape1=2, shape2=4) - pbeta(0, shape1=2,shape2=4), 4)
print(prob)

# Task 7
MATH4753LHO24::myncurve(0.27)
