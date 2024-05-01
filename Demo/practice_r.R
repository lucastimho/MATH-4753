library(dplyr)
ddt <- read.csv("DDT.csv")

summary(ddt)

head(ddt)

# with(ddt, ddt[LENGTH > 49 & WEIGHT < 1200,])
# 
# ddt[which.max(ddt$LENGTH), "DDT"]
# 
# L <- ddt$LENGTH
# z <- (L-mean(L))/sd(L)
# z
# L[abs(z)>3]

# ddt %>% filter(SPECIES == "SMBUFFALO") %>% summarise(mean = mean(WEIGHT), n=n())
# 
# ddt %>% filter(SPECIES=="CCATFISH" & DDT > 33) %>% summarise(mean=mean(LENGTH), n=n())
# 
# ddt %>% filter(SPECIES=="LMBASS" | SPECIES=="SMBUFFALO") %>% summarise(sd=sd(DDT), n=n())
# 
# ddt %>% filter(LENGTH > 40 & WEIGHT > 1000) %>% summarise(n=n())
# 
# ddt %>% filter(SPECIES == "LMBASS" & WEIGHT > 1200) %>% summarize( n = n())
# 
# ddt %>% filter(SPECIES == "LMBASS" & RIVER == "TRM") %>% summarize( n = n())
# 
# ddt %>% filter(SPECIES == "SMBUFFALO") %>% summarize(mean=mean(WEIGHT), n = n())
# 
# ddt %>% filter(RIVER == "TRM") %>% summarize(meansq=mean(LENGTH^2), n = n())

mean(ddt$LENGTH)

sd(ddt$WEIGHT)

with(ddt, table(SPECIES > 50))

ddt %>% filter(LENGTH > 50) %>% summarize(n=n())

ddt %>% filter(LENGTH > 50 & SPECIES == "SMBUFFALO") %>% summarize(n=n())

v <- read.csv("SEEDLING.csv")

tt <- table(v$Abundance, v$Type)

addt <- addmargins(tt)

addt

with(ddt, table(RIVER)) -> tab

barplot(tab)

with(ddt, hist(LENGTH))

mean(ddt$WEIGHT)

1 - pbinom(q=10,size=20,prob=0.7)

pbinom(q=9,size=20,prob=0.7)

dbinom(x=17,size=20,prob=0.7)

library(s20x)
data("course.df")
course.df

tt <- table(course.df$Gender, course.df$Degree)

addt <- addmargins(tt)

addt

1 - pbinom(6, 10, 0.6)

pnorm(8, 10, 5)

1 - pnorm(0, -4, 10)

dbinom(11, 20, 0.4) + dbinom(10, 20, 0.4) + dbinom(9, 20, 0.4) + dbinom(8, 20, 0.4) + dbinom(7, 20, 0.4) + dbinom(6, 20, 0.4) + dbinom(5, 20, 0.4) + dbinom(4, 20, 0.4) + dbinom(3, 20, 0.4)

pnorm(16, 15, 3) - pnorm(10, 15, 3)

pbinom(11, 20, 0.4) - pbinom(2, 20, 0.4)

round((-2*4) + 6, 4)

f <- function (x, a) (x - a)^2
xmin <- optimize(f, c(0, 1), tol = 0.0001, a = 1/3)
xmin

## See where the function is evaluated:
optimize(function(x) x^2*(print(x)-1), lower = 0, upper = 10)

## "wrong" solution with unlucky interval and piecewise constant f():
f  <- function(x) ifelse(x > -1, ifelse(x < 4, exp(-1/abs(x - 1)), 10), 10)
fp <- function(x) { print(x); f(x) }

plot(f, -2,5, ylim = 0:1, col = 2)
optimize(fp, c(-4, 20))   # doesn't see the minimum
optimize(fp, c(-7, 20))   # ok
# }

# dbinom(6, 10, 0.5)
# 
# dbinom(4, 10, 0.5) + dbinom(5, 10, 0.5) + dbinom(6, 10, 0.5)
# 
# 1 - pbinom(6, 10, 0.5)
# 
# pbinom(7, 10, 0.5)
# 
# pnorm(8, 10, 5) - pnorm(3, 10, 5)
# 
# 1 - pnorm(11, 10, 5)
# 
# dnorm(2, 10, 5)
# 
# pnorm(10, 10, 50)
# 
# 1 - pnorm(20,20,6)
# 
# pnorm(5, 10, 10)
# 
# 1 - pnorm(0.5)
# 
# 0.5 - pnorm(10,20,10)
# 
# choose(10,8)
# 
# 1 - pnorm(12, 10, 5)
# 
# pnorm(14, 10, 5) - pnorm(8, 10, 5)
# 
# qnorm(0.6, 10, 5)
# 
# pbeta(2,4,0.7)
# 
# y = c(3, 4, 5)
# mean(y) - 2 * sd(y)

data <- read.csv("SAFETY.csv")
data$REAC.R
t.test(data$REAC.R,data$REAC.U, paired=FALSE)$conf

library(dplyr)
data %>% mutate(difference = REAC.R-REAC.U) -> data2
t.test(data2$difference)$conf

t.test(data$REAC.R,data$REAC.U, paired =TRUE)$conf