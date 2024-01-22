# Arrays

# Take a vector and add a dimension attribute

x <- 1:100

dim(x) <- c(10,5,2)
x

# make a conformable array
y <- 101:200
dim(y) <- c(10,5,2)

# add two conformable arrays
z <- x + y

z[1,2,1]

# Use array function instead
array(data = 101:200, dim = c(10,5,2))

# use options

array(data = 101:200, dim = c(10,5,2), 
      dimnames = list(x = paste0(rep("A",10), 1:10), 
                      y = paste0(rep("B",5), 1:5),
                      z = paste0(rep("D",2), 1:2)))

rep("A",10)
paste0(rep("A",10), 1:10)

# Make a matrix

dim(x) <- c(50,2)
x

#better
A <- matrix(1:100, nrow = 50, ncol = 2, byrow = FALSE)

# Using more options
A <- matrix(1:100, nrow = 50, ncol = 2, byrow = FALSE, 
            dimnames = list(x = paste0(rep("R", 50),1:50), 
                            y = c("A","B")))
A

A[,"B", drop = FALSE]

A[, "B"]

attributes(A)
attr(x = A, which = "dim")
dim(A)
dim(A) <- NULL
A

# Multiplication of matrices

A <- matrix(c(1, 3, 2, 4),
            nrow = 2,
            ncol = 2,
            byrow = TRUE)
A
b <- matrix(c(3,2), ncol = 1)
b

A %*% b

A %*% A


#1x_1 + 3x_2 = 3
#2x_1 + 4x_2 = 2

#Ax = b

sol <- solve(A,b)
sol

A %*% sol
b
