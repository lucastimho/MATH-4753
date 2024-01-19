help.start()
?mean
mean(x = c(1,4,5,6))
v <- c(1,4,5,6)
v
v*2
2*v
m <- 2*v
m

#source("Rhelp.R")

sink("Rcode.txt")
objects()
v <- 1:10
v^2
list(v = v, vsq = v^2)
sink()


objects()
ls()
rm(v,x,xm)
