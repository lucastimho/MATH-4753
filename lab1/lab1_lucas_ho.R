##Task 1
getwd()

##Task 2
ddt <- read.csv("DDT.csv")

#First six lines
head(ddt)

##Task 3
#Variable in DDT
names(ddt)

#How many qualitative variables are in DDT?
2

#How many quantitative variables are in DDT?
4

sp = with(ddt, table(SPECIES))
sp

#How many species are in the ddt data set?
3

#Subset the ddt data set so that we see only the observations with SPECIES, LMBASS and WEIGHT bigger than 800gms
with(ddt, ddt[SPECIES=="LMBASS" & WEIGHT>800,])

#Subset the ddt data set so that we see only those observations where the RIVER is SCM and DDT bigger than 4.0
with(ddt, ddt[RIVER=="SCM" & DDT>4.0,])

##Task 4
summary(ddt)

#Find the mean length of fish in the ddt data frame
mean(ddt$LENGTH)

#What is the standard deviation of the weight of fish in the ddt data frame?
sd(ddt$WEIGHT)

#Is this the plot of LENGTH vs WEIGHT from the ddt data frame?
plot(data=ddt, LENGTH~WEIGHT)

No
#If v=1:20 what is the last value of v/20?
v = 1:20

v[20] / 20

##Task 5
#Make a table of the rivers.
riv = with(ddt, table(RIVER))

riv

#Make a color coded barplot of the rivers
barplot(riv, col=rainbow(4))

#Make a table of the rivers crossed with the species of fish
spriv = with(ddt, table(SPECIES, RIVER))

spriv

#Make a barplot of the rivers crossed with the species of fish.
barplot(spriv)

##Task 6
#Make a pie chart of Fish SPECIES
pie(with(ddt, table(SPECIES)))

#Make a pie chart of RIVERS
pie(riv)

##Task 7
#Make a boxplot of the variable DDT

#Make a boxplot of the variable WEIGHT

#Make a boxplot of the variable LENGTH

layout(matrix(c(1,2,3),nr=1,nc=3))# 1 row 3 cols
layout.show(3)
with(ddt, boxplot(DDT, ylab="DDT", col="Blue", notch=TRUE))
with(ddt, boxplot(WEIGHT, ylab="WEIGHT", col="Green", notch=TRUE))
with(ddt, boxplot(LENGTH, ylab="LENGTH", col="Red", notch=TRUE))

##Task 8
#Make a coplot of LENGTH Vs WEIGHT given RIVER
coplot(LENGTH~WEIGHT|RIVER, data=ddt)

#Make a coplot of DDT Vs WEIGHT given SPECIES
coplot(DDT~WEIGHT|SPECIES, data=ddt)
##Task 9
library(dplyr)
library(ggplot2)

ggplot(data = ddt, aes(x = SPECIES, y = WEIGHT, fill=RIVER)) + geom_boxplot() + ggtitle("Lucas Ho")

ggplot(data=ddt, aes(x = RIVER, y = LENGTH, fill=SPECIES)) + geom_violin() + ggtitle("Lucas Ho")

ggplot(data=ddt, aes(x=WEIGHT, y=LENGTH, fill=SPECIES)) + geom_point() + ggtitle("Lucas Ho")
