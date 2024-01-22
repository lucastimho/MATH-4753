#functions

f <- function(x) x^2
f(2)
f(1:5)
mode(f)

# Use braces for multiple lines

f2 <- function(x){
  y <- x^2 - 5*x + 6
  list(x = x, y = y) # R will print the last line
}

obj <- f2(1:5)
obj$y

f3 <- function(x){
  y <- x^2 - 5*x + 6
  l <- list(x = x, y = y)
  invisible(l) # will not print the last line but will return the object
}

f3(1:5)

obj <- f3(1:5)
obj

# DOT DOT DOT

?mean

#trim	 the fraction (0 to 0.5) of observations to be trimmed from each end of x before the mean is computed. Values of trim outside that range are taken as the nearest endpoint.

myg <- function(x,y, ...){
  z <- c(x,y)
  mean(z,...)
}

myg(x = 1:5, y= 6:10, trim = 0.2)


# return

myless <- function(x,y){ # must be scalars
  if(x == y) return("equal")
  if(x > y) return(y)
  if(x < y) return(x)
}

myless(3:4,2:3)

mylessv <- function(x,y){ #x,y vectors
  ifelse(x > y, y,ifelse(x == y, 0, x)) # 0 means equal
}

mylessv(3:4,2:3)
mylessv(1:4, c(1:2,5,6))
