set.seed(20201118)
r <- 2        ## Repeats per block
B <- r*3      ## Block size
k <- 30/B     ## Number of blocks to be permuted
lbl.lst <- toupper(letters[1:3])
x <- data.frame(seq_id=1:30)
x[["tx"]] <- c(replicate(k,
               sample(rep(lbl.lst, r),
               size=B, replace=FALSE)))
print(paste(x[["tx"]], collapse=""))
table(x[["tx"]])
