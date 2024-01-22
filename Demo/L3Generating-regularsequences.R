# regular sequences

seq(from = -2, to = 4, by = 2)
1:40
2*1:40

x <- seq(1,10,length = 100)
x

# logical operators

l <- x > 9
l

ll <- x < 4
ll

l | ll


# Missing values


d <- c(1,2,3, NA)

is.na(d)

# Character vectors

labs <- paste(c("X","Y"), 1:10, sep="")
labs

labs2 <- paste0(c("X","Y"), 1:10)
labs2

v <- c("A", "b", 'c')
v


# Indexing


x <- 3:20
x

x[1]
x[1:3]

x[x > 18]

x[x == 19]

v <- c(x, NA, x, c(NA,NA))
v

v[!is.na(v)]
