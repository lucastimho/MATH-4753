mtbe <- read.csv("MTBE.csv")

library(dplyr)

mtbe.tab <- with(mtbe, table(mtbe$WellClass, mtbe$Aquifier))

addmargins(mtbe.tab)

mtbe.tab <- with(mtbe, table(mtbe$WellClass, mtbe$MTBE.Detect))

addmargins(mtbe.tab)

epagas <- read.csv("EPAGAS.csv")

head(epagas)

boxplot(epagas)

min(epagas)

(min(epagas$MPG) - mean(epagas$MPG)) / sd(epagas$MPG)

epagas %>% filter(epagas$MPG <= mean(epagas$MPG) + 3*sd(epagas$MPG))

length(epagas$MPG)

mean(epagas$MPG) + sd(epagas$MPG)

pnorm(13, 12, 4) - pnorm(8, 12, 4)
