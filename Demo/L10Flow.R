# flow and looping

# if(cond) expr
# if(cond) cons.expr  else  alt.expr
# 
# for(var in seq) expr
# while(cond) expr
# repeat expr
# break
# next

for(i in 1:10){
  print(i)
}

LETTERS # for each value of a vector do something

for(i in seq_along(LETTERS)){
  print(i)
}

# while

i <- 1

while( i < 10) {
  print(5*i)
  i <- i + 1
}


5 %% 2

'%%'(5,2)

# if ... else()

for( i in 1:10){
if(i %% 2 == 0) {
  print(paste("i =",i,"IS even"))
} else(
  print(paste("i =",i,"is not even")))
  
}


# improve
n <- 20
even <- vector(mode = "numeric", length = n)
odd <- even
j <- 0
k <- 0
for( i in 1:(2*n)){
  if(i %% 2 == 0) {
    j <- j + 1
    even[j] <- i
  } else({
    k <- k + 1
    odd[k] <- i
  })
  
}

even
odd

# repeat, break
i <- 0
repeat({
  i <- i + 1
  print(i)
  if(i == 20) break
})


#ifelse vectorized

ddt <- read.csv("DDT.csv")

ddt$SPECIES 
col <- ifelse(ddt$SPECIES == "SMBUFFALO", "red", "blue")
ddt$SPECIES == "SMBUFFALO"
col
windows();plot(LENGTH ~ WEIGHT, 
     pch = 21, bg = col, cex = 2, 
     data = ddt)

legend("bottomright", 
       legend = c("SMBUFFALO", "Other"), 
       fill = c("red", "blue"))
