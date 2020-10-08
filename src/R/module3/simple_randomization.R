set.seed(20201118)
x <- data.frame(seq_id=1:10)
x[["tx"]] <- sample(x=toupper(letters[1:2]),
                    size=10, replace=TRUE)
head(x, 3)
table(x[["tx"]])
