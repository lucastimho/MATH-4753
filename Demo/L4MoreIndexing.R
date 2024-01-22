#Further indexing
# positive indices

x <- 3:20
length(x)
x[1:14]
x[1:(length(x)-4)]

letters[1:18]

names(x) <- letters[1:18]
x

x["i"]
x[c("f","n")]

#negative indices

x[-1]

x[-c(1,4)]

#modes

z <- numeric()
z
z[1:10] <- 31:40
z

mode(z)

e <- as.character(z)

e

e <- as.numeric(e)

e
