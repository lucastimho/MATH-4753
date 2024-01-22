# Functions
# return plot and list

myf1 <- function(x,y,...){
  plot(y ~ x, pch = 21, bg = "green", ...)
  list(x = x, y = y)
}

ddt <- read.csv("DDT.csv")

windows();myf1(x = ddt$WEIGHT, y = ddt$LENGTH, cex = 1.2, main = "LENGTH Vs WEIGHT")

# return plot, list and file

myf2 <- function(x,y, ...){
  
  plot(y ~ x, pch = 21, bg = "green", ...)
  df <- data.frame(x = x, y = y)
  write.csv(x = df, file = "data2.csv", row.names = FALSE)
  l <- list(x = x, y = y, df = df)
  invisible(l)
}

windows(); obj <- myf2(x = ddt$WEIGHT, y = ddt$LENGTH, cex = 1.4, main = "More functionality")

list.files(pattern = "*.csv")
obj$df


# switch

library(ggplot2)

myf3 <- function(x,y, plot = "baseR"){
  
  switch(plot,
    baseR = {
      plot(y ~ x, pch = 21, bg = "green", cex = 1.2)
    },
    ggplot = {
      df <- data.frame(x = x, y = y)
      g <- ggplot(df, aes(x = x, y = y))
      g <- g + geom_point(pch = 21, cex = 1.2, bg = "green")
      print(g)
    },
    {
      stop("please supply a plot selection of \"ggplot\" or \"baseR\"", call. = FALSE)
      }
  )
 
}

graphics.off()
windows();myf3(x = ddt$LENGTH, y = ddt$WEIGHT,plot = "ggplot")

windows();myf3(x = ddt$LENGTH, y = ddt$WEIGHT,plot = "baseR")

windows();myf3(x = ddt$LENGTH, y = ddt$WEIGHT,plot = "lattice")


