getwd()

data <- read.csv("NZBIRDS.csv")
head(data)

sam <- sample(nrow(data), 35)

rand_sam <- data[sam, ]

?t.test()
t.test(rand_sam$Body.Mass, mu = 0)

t.test(rand_sam$Egg.Length)
?rt()

set.seed(10); y1 <- rnorm(100, mean = 1312, sd = 422)
set.seed(20); y2 <- rnorm(47, mean = 1352, sd = 271)
t.test(y1, y2, var.equal = FALSE, conf.level = 0.9)

var.test(y1, y2, conf.level = 0.9)

y <- read.csv("ROUGHPIPE.csv")
t.test(y, mu = 2)

y <- read.csv("WISCLAKES.csv")
t.test(y$DOC, mu = 15)

theta.null = mean(y$DOC) + qnorm(0.05) * sd(y$DOC)
theta.alt = 14
pnorm((theta.null - theta.alt)/ sd(y$DOC), lower.tail = FALSE)

library(dplyr)
data <- read.csv("ORCHARD.csv")
fog <- data %>% filter(CONDITION == "FOG")
cl <- data %>% filter(CONDITION == "CLEAR" | CONDITION == "CLOUDY")
t.test(fog$RATIO, cl$RATIO, var.equal = TRUE)

data <- read.csv("GASTURBINE.csv")
head(data)
trad <- data %>% filter(ENGINE == "Traditional")
aero <- data %>% filter(ENGINE == "Aeroderiv")
t.test(trad$HEATRATE, aero$HEATRATE, var.equal = TRUE)

data <- read.csv("GOBIANTS.csv")
gobi <- data %>% filter(Region == "Gobi Desert")
dry <- data %>% filter(Region == "Dry Steppe")
t.test(gobi$AntSpecies, dry$AntSpecies)

data <- read.csv("THRUPUT.csv")
t.test(data$HUMAN, data$AUTO)
