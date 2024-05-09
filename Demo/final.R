qt((1 - 0.98)/2, 25 - 1)
?qt()

library(dplyr)
data <- read.csv("INVQUAD.csv")
head(data)

data.g <- data %>% filter(data$PLANT == "Gas")

data.e <- data %>% filter(data$PLANT == "Electric")

head(data.g)
head(data.e)

var.test(data.e$INV.QUAD, data.g$INV.QUAD)

t.test(data.e$INV.QUAD, data.g$INV.QUAD, var.equal = TRUE)

library(s20x)

kwhrs <- read.csv("KWHRS.csv")
head(kwhrs)

kwhrs.lm <- lm(kwhrs$USAGE~kwhrs$SIZE)
summary(kwhrs.lm)

ciReg(kwhrs.lm)

pt(1.49591, 138)

0.01196426061 - qt((1 - 0.95)/2, 142) * 0.00115947187
0.01196426061 + qt((1 - 0.95)/2, 142) * 0.00115947187

1 - pnorm(11, mean=10, sd=4)

pnorm(20, 20, 10) - pnorm(10, 20, 10)

1 - qnorm(0.7)
2 * qnorm(qnorm(0.7))

qt(2 * 10^-16, 138)
