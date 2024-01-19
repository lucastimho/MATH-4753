#Suppose, for example, we have a sample of 30 tax accountants from all the states and territories of Australia1 and their individual state of origin is specified by a character vector of state mnemonics as

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
           "sa", "act", "nsw", "vic", "vic", "act")
state

statef <- factor(state)

statef
attributes(statef)

levels(statef)

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)

length(statef)
length(incomes)

tapply(X = incomes, INDEX = statef,FUN = mean)

tapply(X = incomes, INDEX = statef,FUN = sd)

myf = function(x) mean(x)/sd(x) # more on this 
 
tapply(X = incomes,INDEX = statef, FUN = myf)


