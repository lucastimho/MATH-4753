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

ddt %>% filter(SPECIES == "SMBUFFALO") %>% summarise(mean = mean(WEIGHT), n=n())

ddt %>% filter(SPECIES=="CCATFISH" & DDT > 33) %>% summarise(mean=mean(LENGTH), n=n())

ddt %>% filter(SPECIES=="LMBASS" | SPECIES=="SMBUFFALO") %>% summarise(sd=sd(DDT), n=n())

ddt %>% filter(LENGTH > 40 & WEIGHT > 1000) %>% summarise(n=n())
