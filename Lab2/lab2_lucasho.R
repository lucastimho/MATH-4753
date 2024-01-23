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