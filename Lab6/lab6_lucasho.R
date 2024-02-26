# Task 1
getwd()

# Task 2
layout(matrix(1:4, nr=2,nc=2))

layout.show(4)

curve(dnorm(x, mean=10,sd=4),xlim=c(-2,22))

curve(dnorm(x, mean=10,sd=2),xlim=c(4,16))

curve(dnorm(x, mean=5,sd=10),xlim=c(-25,35))

curve(dnorm(x, mean=5,sd=1/2),xlim=c(3.5,6.5))

curve(dnorm(x, mean=0, sd=1), xlim=c(-3, 3))

xcurve=seq(2, 4, length=1000)

ycurve=dnorm(xcurve, mean=0, sd=1)

polygon(c(2,xcurve,4),c(0,ycurve,0),col="Red")

curve(dnorm(x, mean=4, sd=2), xlim=c(-2, 10))

xcurve=seq(1, 5, length=1000)

ycurve=dnorm(xcurve, mean=4, sd=2)

polygon(c(1,xcurve,5),c(0,ycurve,0),col="Red")

curve(dnorm(x, mean=10, sd=4), xlim=c(-2, 22))

xcurve=seq(-2, 10, length=1000)

ycurve=dnorm(xcurve, mean=10, sd=4)

polygon(c(-2,xcurve,10),c(0,ycurve,0),col="Red")

curve(dnorm(x, mean=-2, sd=1/2), xlim=c(-3.5, -0.5))

xcurve=seq(-3, -2, length=1000)

ycurve=dnorm(xcurve, mean=-2, sd=1/2)

polygon(c(-3,xcurve,-2),c(0,ycurve,0),col="Red")

# Task 3