tea <- matrix(c(3, 1, 1, 3), nrow = 2,
       dimnames=list(Guess = c("Milk","Tea"),
                     Truth = c("Milk","Tea")))
print(tea)
test1 <- fisher.test(tea, alternative="greater")
print(test1[["p.value"]])
test2 <- chisq.test(tea)
print(test2[["p.value"]])
