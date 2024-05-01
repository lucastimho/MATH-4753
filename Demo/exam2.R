y = c(3, 4, 5)
t.test(y, conf.level = 0.8)

obj <- read.csv("SHALLOW.csv")
t.test(obj$Actual, obj$Predict, mu = 0, paired = TRUE, conf.level = 0.99)

cor(obj$Actual, obj$Predict)

mow <- read.csv("mow-mow.csv")
summary(mow)
var.test(mow$y1, mow$y2,conf.level = 0.8)

t.test(mow$y1, mow$y2, var.equal = FALSE, conf.level = 0.92)
