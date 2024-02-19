# Task 1
getwd()

# Task 2
mybin=function(iter,n=10,p=0.7) {
  sam.mat=matrix(NA,nr=n,nc=iter,byrow = TRUE)
  succ=c()
  for(i in 1:iter){
    sam.mat[,i]=sample(c(1,0),n,replace=TRUE,prob=c(p,1-p))
    succ[i]=sum(sam.mat[,i])
  }
  succ.tab=table(factor(succ,levels=0:n))
  barplot(succ.tab/(iter), col=rainbow(n+1),main="Binomial Simulation",xlab="Number of Successes")
  succ.tab/iter
}

mybin(iter=100)
mybin(iter=200)
mybin(iter=500)
mybin(iter=1000)
mybin(iter=10000)

dbin.tab=round(dibnom(0:10, size=10, prob=0.7),4)
names(dibin.tab) = 0:10
dbin.tab

# Task 3

sample(c(rep(1,12),rep(0,8)),size=5)

sample(c(1,0),size=20,prob=c(0.6,0.4),replace=TRUE)

rhyper(nn=5,m=12,n=8,k=100)

rhyper(nn=5,m=12,n=8,k=200)

rhyper(nn=5,m=12,n=8,k=500)

rhyper(nn=5,m=12,n=8,k=1000)

rhyper(nn=5,m=12,n=8,k=10000)

# Task 4
mysample=function(n=1000,iter=30,time=1){
  for(i in 1:iter){
    s=sample(1:10,n,replace = TRUE)
    sf=factor(s,levels=1:10)
    barplot(table(sf)/n,beside=TRUE,col=rainbow(10), main=paste("Example sample()", " iteration ",i," n= ",n,sep=""),ylim=c(0,0.2))
    Sys.sleep(time)
  }
}

mysample()

# Task 5
choose(8,4)

ppois(q=4,lambda=2)

dnbinom(7,3,0.4)

pbinom(q=8,size=15,prob=0.4)

# Task 6
MATH4753LHO24::mybin()