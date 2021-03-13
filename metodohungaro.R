library(clue)

x <- matrix(c(15, 10, 9, 9, 15, 10, 10, 12, 8), nrow = 3)

solve_LSAP(x)

y <- solve_LSAP(x)

sum(x[cbind(seq_along(y), y)])