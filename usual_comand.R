# example in ISwR
library(ISwR)

stroke <- read.csv2(system.file("rawdata", "stroke.csv", package = "ISwR"), 
                   na.strings = ".")
head(stroke)
names(stroke) = tolower(names(stroke))

# subset
s1 <- subset(stroke, age >= 70)
# tranform
s2 <- transform(stroke, died = as.Date(died, format="%d.%m.%y"))
# within
s3 <- within(stroke, { 
  log.age = log(age)
  del.age = age - log.age})
# sub
names(stroke) = sub("d", "d.", names(stroke))
names(stroke) = sub("d.", "d", names(stroke))
# summary(stroke)

# cbind
row.n = nrow(stroke)
s4 <- cbind(stroke, index =1:row.n)

# c(coma, diab)
cols <- c("age", "index")
s5 <- lapply(s4[cols], function(i) i - 1 )

## goon

