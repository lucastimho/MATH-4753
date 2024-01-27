ddt <- read.csv("DDT.csv")

summary(ddt)

head(ddt)

with(ddt, ddt[LENGTH > 49 & WEIGHT < 1200,])

ddt[which.max(ddt$LENGTH), "DDT"]

L <- ddt$LENGTH
z <- (L-mean(L))/sd(L)
z
L[abs(z)>3]
