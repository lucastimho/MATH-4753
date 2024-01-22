# Functions and what are returned

# Plots

# Base R

myf1 <- function(x){
  y <- x^2 - 5*x + 6
  
  plot(x,y)
}

windows(); myf1(-10:10) # in mac use quartz(), linus x11()

# ggplot

library(ggplot2)

myf2 <- function(x){
  y <- x^2 - 5*x + 6
  df <- data.frame(x = x, y = y)
  g <- ggplot(df, aes(x = x, y = y)) 
  g <- g + geom_point()
  print(g)
}

windows(); myf2(x = -10:10)

# Improve plots 

#Base R

myf3 <- function(x,...){
  y <- x^2 - 5*x + 6
  
  plot(x,y, pch = 21, 
       cex = 1.2, bg = "purple", ...)
}


windows(); myf3(x = -10:10, main = "Demonstration of extra options")

# ggplot (uses layers)

myf4 <- function(x, ...){
  y <- x^2 - 5*x + 6
  df <- data.frame(x = x, y = y)
  g <- ggplot(df, aes(x = x, y = y)) 
  g <- g + geom_point(pch = 21,bg = "purple", cex = 1.2)
  g <- g + labs(...)
  print(g)
}

windows(); myf4(x = -10:10, title = "ggplot extras")
