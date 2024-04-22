y = c(3, 4, 5)
t.test(y, conf.level = 0.8)

obj <- read.csv("SHALLOW.csv")
t.test(obj$Actual, obj$Predict, mu = 0, paired = TRUE, conf.level = 0.99)