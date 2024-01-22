# outer

x <- 1:10
y <- 2:5
length(y)

x %o% y # outer product

'%o%'(x,y) # inline function can be invoked like any other function

zx <- outer(x,y,FUN = function(x,y) x)
zy <- outer(x,y,FUN = function(x,y) y)

zx

zy

windows(); plot(zy ~ zx, #mac use quartz()
                pch = 21, 
                bg = "blue", 
                cex =2)
abline(h = zy, v = zx)


zz <- outer(
  x,
  y,
  FUN = function(x, y)
    paste(x, y)
)

zz

zz2 <- outer(
  x,
  y,
  FUN = function(x, y)
    paste0("(", x, ",", y, ")")
)

zz2

x <- seq(1,10,length = 1000)

y <- seq(2,5, length = 1000)

z <- outer(
  x,
  y,
  FUN = function(x, y)
    dnorm(x - 5) * dnorm(y - 3.5)
)

windows(bg = "white")
contour(x,
        y,
        z,
        col = "red",
        lwd = 2,
        main = "Contour plot demonstrating a use of the outer function")

graphics.off()
