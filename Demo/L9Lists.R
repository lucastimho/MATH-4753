#lists

# ordered collection of objects

Dmat <- matrix(1:10, nrow = 5)
Dmat

lst <- list(A = 1:4, B = 5:10, C = -3, D = Dmat, E = "text" )
lst

# components


lst[1]
lst[1:3]

lst[[1]]

lst[[2]]
lst[[2]][4]

lst["A"]
lst["D"]

# use $
lst$B

lst$D


# data frames

#A data frame is a list with class "data.frame". 

df <- data.frame(A = 1:10, B = 21:30, C = rep(c("a","b"), times = c(5,5)))
df
df$A
df["A"]
df[[1]]

df[[2]]

df[[3]]
df[["C"]]

df[2,3]


df$C[2]

# subsetting

df[df$A > 4,]

df[df$C == "a",]

with(df, df[A > 4 & B > 23 & B < 29 & C == "b",])



#attach, detach (don't use)
objects()

with(df, A)
attach(df)
A
detach(df)

df2 <- read.csv("DDT.csv")

head(df2)

table(df2$RIVER)

table(df2$RIVER,df2$SPECIES)


