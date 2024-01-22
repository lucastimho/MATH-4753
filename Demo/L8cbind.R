#cbind rbind
# these respect dimensions

A <- matrix(1:9, nrow = 3, ncol = 3)
A
cbind(A, 10:12)
cbind(10:12, A)
rbind(A, rep(13,3))

x1 <- c(1,2,3,4)
x2 <- 5:8
x3 <- 9:12
one <- rep(1,4)
cbind(one,x1,x2,x3)


# concatenation with c()

c(1,8:15)

c(1:3, 12,14.7, "text")

c(list(A = c(B = 1)), recursive = TRUE)

c(list(A = c(B = 0, C = 2), B = c(D = 3, E = 8)), recursive = TRUE)

A
c(A)
as.vector(A)
as.vector(A, mode = "list")

# tables and factors



species <- c("CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", 
             "SMBUFFALO", "SMBUFFALO", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "LMBASS", "LMBASS", "LMBASS", 
             "LMBASS", "LMBASS", "LMBASS", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "SMBUFFALO", "SMBUFFALO", 
             "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "SMBUFFALO", 
             "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", 
             "SMBUFFALO", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", 
             "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", "SMBUFFALO", 
             "SMBUFFALO", "CCATFISH", "CCATFISH", "CCATFISH", "CCATFISH", 
             "CCATFISH", "CCATFISH", "SMBUFFALO", "SMBUFFALO", "SMBUFFALO", 
             "SMBUFFALO", "LMBASS", "LMBASS", "LMBASS", "LMBASS", "LMBASS", 
             "LMBASS")

length <- c(42.5, 44, 41.5, 39, 50.5, 52, 40.5, 48, 48, 43.5, 40.5, 47.5, 
            44.5, 46, 48, 45, 43, 45, 48, 45, 49, 50, 46, 52, 48, 51, 48.5, 
            51, 44, 51, 49, 46, 52, 46, 46, 48, 44, 42, 42.5, 45.5, 48, 44, 
            28.5, 26, 25.5, 25, 23, 28, 41, 44, 41, 42, 42.5, 44, 43.5, 46.5, 
            43, 47, 46, 41, 36, 47.5, 41.5, 49.5, 46, 46.5, 36, 37, 35, 36, 
            48, 49, 35.5, 46, 45, 44.5, 49, 47.5, 35, 51, 42.5, 38, 41, 47, 
            45, 45.5, 45, 45, 39, 40.5, 46, 47, 48.5, 48, 38, 38.5, 29.5, 
            42, 47.5, 43.5, 47.5, 43.5, 47.5, 51.5, 49.5, 47, 47.5, 47, 36, 
            34.5, 44.5, 46, 46, 32.5, 46, 40, 43.5, 46.5, 43, 47.5, 32, 40.5, 
            51.5, 48, 47, 41, 33.5, 47, 50, 45, 49, 49.5, 50, 45, 32.5, 38, 
            38.5, 36, 26.5, 23.5, 30, 29, 17.5, 36)


summary(length)



lencut <- cut(length, breaks = 17 + 5*(0:7))
lencut <- factor(lencut, ordered = TRUE)

class(lencut)

tab <- table(lencut, species)
sum(tab)
addmargins(tab)

windows();barplot(tab, beside = TRUE, leg = TRUE)


#previously

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

# make a factor from quantitative data using "cut"

sort(incomes)
35+10*(0:4)

inccut <- cut(incomes, breaks = 35+10*(0:4))
inccut

tab <- table(inccut, statef)
tab
sum(tab)

#application
windows();barplot(tab, beside = TRUE,leg = TRUE)

f <- rep(x = LETTERS, times = 4*1:26)
head(f)
tab <- table(f)
tab
windows();barplot(tab, col = rgb(1:26/26,0,0))

graphics.off()
