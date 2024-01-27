## Task 1
getwd()

## Task 2
head(read.csv("EPAGAS.csv"))

## TASK 3
mpg.df = read.csv("EPAGAS.csv")

mpg = mpg.df$MPG

z = (mpg - mean(mpg)) / sd(mpg)

mean(z)

sd(z) ^ 2

z[abs(z)>=2 & abs(z)<=3]

z[abs(z)>3]

mycol = ifelse(abs(z)>3, "Red", ifelse(abs(z)>=2 & abs(z)<=3, "Blue", "Black"))

library(lattice)
dotplot(z, col=mycol)

## TASK 4
library(ggplot2)
p <- ggplot(data = mpg.df, aes(y=MPG)) + geom_boxplot(width = 0.1, notch=TRUE) + xlim(-0.4, 0.4) + ggtitle("MPG of 100 Vehicles")

p + coord_flip()

length(z[abs(z)<=2]) > length(mpg) * 3 / 4

length(z[abs(z)<=2]) > length(mpg) * 0.95
