# vectors
x <- c(1,2,3,6)
x
X # case sensitive
ls()
objects()
rm(x)
objects()

assign("y", c(7,8,10,12))
y

c(x,y)

# DATA manipulation

sum(x)/4
mean(x)

rep(x, times = 4)

rep(x, each = 4)

# vector arithmetic

var(x)

sum((x - mean(x))^2)/(length(x)-1)

