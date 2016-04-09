
subset2_q <- function(x, condition){
  index <- eval(condition, x, parent.frame())
  x[index, ]
}

subset2 <- function(x, condition){
  subset2_q(x, substitute(condition))
}

scramble <- function(x) x[sample(nrow(x)),]

subscramble <- function(x, condition){
  condition <- substitute(condition)
  scramble(subset2_q(x, condition))
}

df <- data.frame(a = 1:5,
                 b = 5:1,
                 c = c(3,4,6,1,2))
subscramble(df, a == 4)
