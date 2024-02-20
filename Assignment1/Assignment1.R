# Q1
assignments <- c("In-class quizzes", "Laboratories", "Chapter Quizzes", "Project 1", "Project 2", "Exam 1", "Exam 2", "Assignments", "Final Exam")
weight <- c(0.1, 0.1, 0.05, 0.0333, 0.0667, 0.1, 0.1, 0.15, 0.3)

grade.df <- data.frame(Assignments=assignments, Weight=weight)

print(grade.df)

# Q2
ddt <- read.csv("DDT.csv")

ddt$MILE <- as.factor(ddt$MILE)

coplot(WEIGHT~LENGTH | RIVER*SPECIES, data=ddt, col="Blue", pch=1.2, xlab="Length", ylab="Weight", )

# Each plot represents the length and width of the fish given both the river and species

# This creates a numeric vector where each element corresponds to the numeric representation of the levels in MILE

# This returns the number of unique values from m

# There are no observations from the the two corresponding variables

ddt[ddt$RIVER=="FCM" & ddt$SPECIES=="CCATFISH",]

# Q3
# Quantitative
# Quantitative
# Qualitative
# Quantitative
# Qualitative
# Quantitative
# Qualitative

# Q4
# Simple, stratified, cluster, and systematic random sampling
# Simple random sampling ensures that every subset of fixed size in the population has the same chance of being included in the sample
# Stratified random sampling is typical used when the experimental units associated with the population can be separated into two or more groups of units where the characteristics of the units are more similar within the units than across the units
# Cluster random sampling is used to sample natural groupings of experimental units first, then collect data from all experimental units within each cluster.
# Systematic random sampling involves systematically selecting every kth experimental unit from list of all experimental units

# Q5
mtbe <- read.csv("MTBE.csv")

ind=sample(1:223,5,replace=FALSE)

mtbe[ind,]

mtbeo = na.omit(mtbe)

depth = mtbeo[mtbeo$Aquifier=="Bedrock",]$Depth

sd(depth)

# Q6
