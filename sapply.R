## use guide about with and adply sapply
# calculate mean of the each column
library(plyr)

##data.frame
m <- matrix(seq(1, by = 1, length.out = 81), 9, 9, byrow = TRUE)
dt.m <- data.frame(m, stringsAsFactors = FALSE)
names(dt.m) <- letters[1:9]

##function (mean)
f.mean <- function(x){
  with(dt.m, mean(dt.m[, x]))
}

## use sapply 

i <- seq(1, by = 1, length.out = 9)
dt.mean <- sapply(i, f.mean)
dt.mean

## use adply generate data.frame with index

df.mean <- adply(i, 1, f.mean)
df.mean

## ddply  a as factor

xx <- ddply(dt.m, .(a), summarize, mean.b = round(mean(b), 2))





