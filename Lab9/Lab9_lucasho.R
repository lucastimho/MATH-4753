# Task 1
getwd()

# Task 2
set.seed(35)
sam=round(rnorm(20,mean=10,sd=4),2)

unique(sample(sam,20,replace=TRUE))
unique(sample(sam,20,replace=TRUE))
unique(sample(sam,20,replace=TRUE))
unique(sample(sam,20,replace=TRUE))
unique(sample(sam,20,replace=TRUE))

unique(sample(sam,20,replace=FALSE))
unique(sample(sam,20,replace=FALSE))
unique(sample(sam,20,replace=FALSE))
unique(sample(sam,20,replace=FALSE))
unique(sample(sam,20,replace=FALSE))

sample(sam,21,replace=FALSE)

# Task 3
myboot2<-function(iter=10000,x,fun="mean",alpha=0.05,cx=1.5,...){  #Notice where the ... is repeated in the code
  n=length(x)   #sample size
  
  y=sample(x,n*iter,replace=TRUE)
  rs.mat=matrix(y,nr=n,nc=iter,byrow=TRUE)
  xstat=apply(rs.mat,2,fun) # xstat is a vector and will have iter values in it 
  ci=quantile(xstat,c(alpha/2,1-alpha/2))# Nice way to form a confidence interval
  # A histogram follows
  # The object para will contain the parameters used to make the histogram
  para=hist(xstat,freq=FALSE,las=1,
            main=paste("Histogram of Bootstrap sample statistics","\n","alpha=",alpha," iter=",iter,sep=""),
            ...)
  
  #mat will be a matrix that contains the data, this is done so that I can use apply()
  mat=matrix(x,nr=length(x),nc=1,byrow=TRUE)
  
  #pte is the point estimate
  #This uses whatever fun is
  pte=apply(mat,2,fun)
  abline(v=pte,lwd=3,col="Black")# Vertical line
  segments(ci[1],0,ci[2],0,lwd=4)      #Make the segment for the ci
  text(ci[1],0,paste("(",round(ci[1],2),sep=""),col="Red",cex=cx)
  text(ci[2],0,paste(round(ci[2],2),")",sep=""),col="Red",cex=cx)
  
  # plot the point estimate 1/2 way up the density
  text(pte,max(para$density)/2,round(pte,2),cex=cx)
  
  invisible(list(ci=ci,fun=fun,x=x))# Some output to use if necessary
}

set.seed(39); sam=rnorm(25,mean=25,sd=10)
myboot2(10000,x=sam,fun="mean",alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(30); sam=rchisq(20,df=3)
myboot2(10000,x=sam,fun="mean",alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(40); sam=rgamma(30,shape=2,scale=3)
myboot2(10000,x=sam,fun="mean",alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(10); sam=rbeta(20,shape1=3,shape2=4)
myboot2(10000,x=sam,fun="mean",alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(39); sam=rnorm(25,mean=25,sd=10)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

set.seed(30); sam=rchisq(20,df=3)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

set.seed(40); sam=rgamma(30,shape=2,scale=3)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

set.seed(10); sam=rbeta(20,shape1=3,shape2=4)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

# Task 4
sam=c(1,1,1,2,2,2,2,3,3,3,4,4)
myboot2(10000, x=sam, fun="median", alpha=0.05, xlab="median",col="Purple",cx=1.5)

# Task 5
funtask=function(x){
  mean(x)/median(x)
}

set.seed(39); sam=rnorm(25,mean=25,sd=10)
myboot2(10000,x=sam,fun=funtask,alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(30); sam=rchisq(20,df=3)
myboot2(10000,x=sam,fun=funtask,alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(40); sam=rgamma(30,shape=2,scale=3)
myboot2(10000,x=sam,fun=funtask,alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(10); sam=rbeta(20,shape1=3,shape2=4)
myboot2(10000,x=sam,fun=funtask,alpha=0.05,xlab="mean",col="Purple",cx=1.5)

set.seed(39); sam=rnorm(25,mean=25,sd=10)
myboot2(10000,x=sam,fun=funtask,alpha=0.30,xlab="mean",col="Purple",cx=1.5)

set.seed(30); sam=rchisq(20,df=3)
myboot2(10000,x=sam,fun=funtask,alpha=0.30,xlab="mean",col="Purple",cx=1.5)

set.seed(40); sam=rgamma(30,shape=2,scale=3)
myboot2(10000,x=sam,fun=funtask,alpha=0.30,xlab="mean",col="Purple",cx=1.5)

set.seed(10); sam=rbeta(20,shape1=3,shape2=4)
myboot2(10000,x=sam,fun=funtask,alpha=0.30,xlab="mean",col="Purple",cx=1.5)

# Task 6
set.seed(39); sam=rpois(20, 0.03)
myboot2(10000,x=sam,fun="mean",alpha=0.20,xlab="mean",col="Purple",cx=1.5)

set.seed(30); sam=rlnorm(20)
myboot2(10000,x=sam,fun="mean",alpha=0.20,xlab="mean",col="Purple",cx=1.5)

set.seed(40); sam=runif(20)
myboot2(10000,x=sam,fun="mean",alpha=0.20,xlab="mean",col="Purple",cx=1.5)

set.seed(10); sam=rbinom(3,20,0.3)
myboot2(10000,x=sam,fun="mean",alpha=0.20,xlab="mean",col="Purple",cx=1.5)

set.seed(39); sam=rpois(20, 0.03)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

set.seed(30); sam=rlnorm(20)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

set.seed(40); sam=runif(20)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

set.seed(10); sam=rbinom(3,20,0.3)
myboot2(10000,x=sam,fun="var",alpha=0.20,xlab="variance",col="Purple",cx=1.5)

# Task 7
set.seed(68); sam=rnorm(20,mean=10,sd=4)
myboot2(10000,x=sam,fun="mean",alpha=0.20,xlab="mean",col="Purple",cx=1.5)

# Task 8
library(MATH4753LHO24)

data <- MATH4753LHO24::fire$DISTANCE
MATH4753LHO24::myboot2(x=data, xlab="mean")
