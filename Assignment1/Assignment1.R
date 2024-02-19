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