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

df1 <- ddt %>% filter(LENGTH > 30 & DDT < 1000)
df1

ddt %>% select(c(SPECIES, RIVER)) %>% table() %>% addmargins()

ddt %>% summarise(mean = mean(LENGTH))

ddt %>% group_by(SPECIES) %>% summarise (mean = mean(WEIGHT), n = n())