set.seed(20201118)
x <- data.frame(seq_id=1:100); i <- 0
repeat {
  i <- i + 1
  x[["tx"]] <- sample(x=toupper(letters[1:4]),
                      size=100, replace=TRUE)
  alloc <- table(x[["tx"]])
  if ( any(abs(100/4 - alloc) > 0) ) {
    x[["tx"]] <- NULL; rm(alloc)
  } else break
}
print(i)
