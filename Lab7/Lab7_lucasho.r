# Task 1
getwd()

# Task 2
mychisim <- function(n1=10,sigma1=4,mean1=10,iter=1000,ymax=0.1,...){    # adjust ymax to make graph fit
  y1=rnorm(n1*iter,mean=mean1,sd=sigma1) # generate iter samples of size n1
  
  data1.mat=matrix(y1,nrow=n1,ncol=iter,byrow=TRUE) # Each column is a sample size n1
  
  ssq1=apply(data1.mat,2,var) # ssq1 is s squared
  
  w=(n1-1)*ssq1/sigma1^2      #chi-sq stat
  
  hist(w,freq=FALSE, ylim=c(0,ymax), # Histogram with annotation
       main=substitute(paste("Sample size = ",n[1]," = ",n1," statistic = ",chi^2)),
       xlab=expression(paste(chi^2, "Statistic",sep=" ")), las=1)
  lines(density(w),col="Blue",lwd=3) # add a density plot
  curve(dchisq(x,n1-1),add=TRUE,col="Red",lty=2,lwd=3) # add a theoretical curve
  title=expression(chi^2==frac((n[1]-1)*s^2,sigma^2)) #mathematical annotation -see ?plotmath
  # legend(locator(1),c("Simulated","Theoretical"),col=c("Blue","Red"),lwd=4,lty=1:2,bty="n",title=title) # Legend #
  return(list(w=w,summary=summary(w),sd=sd(w),fun="Chi-sq")) # some output to use if needed
}
layout(matrix(1:4, nr=2,nc=2))

chisim1 <- mychisim(ymax=0.15)
chisim2 <- mychisim(n1=20, ymax=0.08)
chisim3 <- mychisim(n1=100, ymax=0.04)
chisim4 <- mychisim(n1=200, ymax=0.03)

par(mfrow=c(1,1))

chisq <- mychisim(iter=1500, mean1=20, sigma1=10)
hist(chisq$w)

# Task 3
myTsim <- function(n1=10,sigma1=4,mean1=10,iter=1000,ymax=0.5,...){    # adjust ymax to make graph fit
  y1=rnorm(n1*iter,mean=mean1,sd=sigma1)# generate iter samples of size n1
  
  data1.mat=matrix(y1,nrow=n1,ncol=iter,byrow=TRUE) # Each column is a sample size n1
  
  sd1=apply(data1.mat,2,sd) # sd
  ybar=apply(data1.mat,2,mean)  # mean
  
  w=(ybar-mean1)/(sd1/sqrt(n1))      #T stat
  
  hist(w,freq=FALSE, ylim=c(0,ymax), # Histogram with annotation
       main=substitute(paste("Sample size = ",n[1]," = ",n1," statistic = ",T," iterations= ",iter)),
       xlab=expression(paste(T, "Statistic",sep=" ")), las=1)
  lines(density(w),col="Blue",lwd=3) # add a density plot
  curve(dt(x,n1-1),add=TRUE,col="Red",lty=2,lwd=3) # add a theoretical curve
  title=expression(T==frac((bar(y)-mu),s/sqrt(n1))) #mathematical annotation -see ?plotmath
  legend(locator(1),c("Simulated","Theoretical"),col=c("Blue","Red"),lwd=4,lty=1:2,bty="n",title=title) # Legend #
  return(list(w=w,summary=summary(w),sd=sd(w),fun="T")) # some output to use if needed
}
layout(matrix(1:4, nr=2,nc=2))

tsim1 <- myTsim()
tsim2 <- myTsim(n1=20)
tsim3 <- myTsim(n1=100)
tsim4 <- myTsim(n1=200)

par(mfrow=c(1,1))

T <- myTsim(iter=1500, mean1=20, sigma1=10)
hist(T$w)

# Task 4
mychisim2<-function(n1=10,n2=10,sigma1=4,sigma2=4,mean1=5,mean2=10,iter=1000,ymax=0.07,...){    # adjust ymax to make graph fit
  y1=rnorm(n1*iter,mean=mean1,sd=sigma1)# generate iter samples of size n1
  y2=rnorm(n2*iter,mean=mean2,sd=sigma2)
  data1.mat=matrix(y1,nrow=n1,ncol=iter,byrow=TRUE) # Each column is a sample size n1
  data2.mat=matrix(y2,nrow=n2,ncol=iter,byrow=TRUE)
  ssq1=apply(data1.mat,2,var) # ssq1 is s squared
  ssq2=apply(data2.mat,2,var)
  spsq=((n1-1)*ssq1 + (n2-1)*ssq2)/(n1+n2-2) # pooled s squared
  w=(n1+n2-2)*spsq/(sigma1^2)#sigma1=sigma2,  Chi square stat
  hist(w,freq=FALSE, ylim=c(0,ymax), # Histogram with annotation
       main=substitute(paste("Sample size = ",n[1]+n[2]," = ",n1+n2," statistic = ",chi^2)),
       xlab=expression(paste(chi^2, "Statistic",sep=" ")), las=1)
  lines(density(w),col="Blue",lwd=3) # add a density plot
  curve(dchisq(x,n1+n2-2),add=TRUE,col="Red",lty=2,lwd=3) # add a theoretical curve
  title=expression(chi^2==frac((n[1]+n[2]-2)*S[p]^2,sigma^2)) #mathematical annotation -see ?plotmath
  # legend(locator(1),c("Simulated","Theoretical"),col=c("Blue","Red"),lwd=4,lty=1:2,bty="n",title=title) # Legend #
  return(list(w=w,summary=summary(w),sd=sd(w),fun="Chi-sq")) # some output to use if needed
}
layout(matrix(1:4, nr=2,nc=2))

chi2sam1 <- mychisim2()
chi2sam2 <- mychisim2(n1=20, mean1=3, mean2=5, sigma1=10, sigma2=10)
chi2sam3 <- mychisim2(n1=50, n2=50, iter=10000, ymax=0.04)
chi2sam4 <- mychisim2(n1=80, n2=50, mean=3, mean2=5, sigma1=10, sigma2=10, ymax=0.03)

par(mfrow=c(1,1))

chi2sam <- mychisim2(n1=10,n2=14,sigma1=3,sigma2=3,mean1=5,mean2=10,iter=1000,ymax=0.07)
hist(chi2sam$w)

# Task 5
myTsim2 <- function(n1=10,n2=14,sigma1=3,sigma2=3,mean1=5,mean2=10,iter=1000,ymax=0.5,...){
  y1=rnorm(n1*iter,mean=mean1,sd=sigma1)# generate iter samples of size n1
  y2=rnorm(n2*iter,mean=mean2,sd=sigma2)
  data1.mat=matrix(y1,nrow=n1,ncol=iter,byrow=TRUE) # Each column is a sample size n1
  data2.mat=matrix(y2,nrow=n2,ncol=iter,byrow=TRUE)
  ssq1=apply(data1.mat,2,var) # ssq1 is s squared
  ybar1= apply(data1.mat,2,mean)
  ssq2=apply(data2.mat,2,var)
  ybar2=apply(data2.mat,2,mean)
  spsq=((n1-1)*ssq1 + (n2-1)*ssq2)/(n1+n2-2) # pooled s squared
  w=((ybar1-ybar2)-(mean1-mean2))/sqrt(spsq*(1/n1+1/n2))#sigma1=sigma2,  Chi square stat
  hist(w,freq=FALSE, ylim=c(0,ymax), # Histogram with annotation
       main=substitute(paste("Sample size = ",n[1]+n[2]," = ",n1+n2," statistic = ",T)),
       xlab=paste(" T Statistic",sep=""), las=1)
  lines(density(w),col="Blue",lwd=3) # add a density plot
  curve(dt(x,n1+n2-2),add=TRUE,col="Red",lty=2,lwd=3) # add a theoretical curve
  title=expression(T==frac((bar(Y)[1]-bar(Y)[2])-(mu[1]-mu[2]),S[p]*sqrt(frac(1,n[1])+frac(1,n[2])))) #mathematical annotation -see ?plotmath
  # legend(2,0.2,c("Simulated","Theoretical"),col=c("Blue","Red"),lwd=4,lty=1:2,bty="n",title=title)# Legend #
  return(list(w=w,summary=summary(w),sdw=sd(w),fun="T")) # some output to use if needed
}
layout(matrix(1:4, nr=2,nc=2))

t2sam1 <- myTsim2(n2=10, sigma1=4, sigma2=4)
t2sam2 <- myTsim2(n1=20, n2=10, mean1=3, mean2=5, sigma1=10, sigma2=10)
t2sam3 <- myTsim2(n1=50, n2=50, sigma1=4, sigma2=4, iter=10000)
t2sam4 <- myTsim2(n1=80, n2=50, mean1=3, mean2=5, sigma1=10, sigma2=10, iter=10000)

par(mfrow=c(1,1))

t2sam <- myTsim(iter=10000)
hist(t2sam$w)

# Task 6
myFsim2<-function(n1=10,n2=14,sigma1=3,sigma2=2,mean1=5,mean2=10,iter=1000,ymax=0.9,...){
  y1=rnorm(n1*iter,mean=mean1,sd=sigma1)# generate iter samples of size n1
  y2=rnorm(n2*iter,mean=mean2,sd=sigma2)
  data1.mat=matrix(y1,nrow=n1,ncol=iter,byrow=TRUE) # Each column is a sample size n1
  data2.mat=matrix(y2,nrow=n2,ncol=iter,byrow=TRUE)
  ssq1=apply(data1.mat,2,var) # ssq1 is s squared
  ssq2=apply(data2.mat,2,var)
  #spsq=((n1-1)*ssq1 + (n2-1)*ssq2)/(n1+n2-2) # pooled s squared
  w=ssq1*sigma2^2/(ssq2*sigma1^2) #
  hist(w,freq=FALSE, ylim=c(0,ymax), # Histogram with annotation
       main=substitute(paste("Sample size = ",n[1]+n[2]," = ",n1+n2," statistic = ",F)),
       xlab=paste("F Statistic",sep=""), las=1)
  lines(density(w),col="Blue",lwd=3) # add a density plot
  curve(df(x,n1-1,n2-1),xlim=c(0,6),add=TRUE,col="Red",lty=2,lwd=3) # add a theoretical curve
  title=expression(F==frac(s[1]^2,s[2]^2)*frac(sigma[2]^2,sigma[1]^2)) #mathematical annotation -see ?plotmath
  legend(6,0.5,c("Simulated","Theoretical"),col=c("Blue","Red"),lwd=4,lty=1:2,bty="n",title=title)# Legend #
  return(list(w=w,summary=summary(w),sd=sd(w),fun="F")) # some output to use if needed
}
# F = ((sd1/sd2)^2)((sigma2/sigma1)^2)
# No assumptions made
layout(matrix(1:4, nr=2,nc=2))

fsim1 <- myFsim2(n2=10, sigma1=4, sigma2=4)
fsim2 <- myFsim2(n1=20, n2=10, mean1=3, mean2=5, sigma1=10, sigma2=10)
fsim3 <- myFsim2(n1=50, n2=50, sigma1=4, sigma2=4, iter=10000, ymax=1.5)
fsim4 <- myFsim2(n1=80, n2=50, mean1=3, mean2=5, sigma1=10, sigma2=10, iter=10000, ymax=1.7)

par(mfrow=c(1,1))

fsim <- myFsim2(iter=10000)
hist(fsim$w)

# Task 7