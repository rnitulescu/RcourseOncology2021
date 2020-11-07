data(sleep) ## Dealing with ties
sleep[["extra"]] <- sleep[["extra"]] +
                    runif(nrow(sleep), -0.01, 0.01)
## Two-sample
test1 <- wilcox.test(extra ~ group, data=sleep)
print(test1[["p.value"]])

## One-sample (paired)
sleep_pair <- data.frame(
  delta=sleep[ sleep[["group"]] == 1, "extra" ] - 
        sleep[ sleep[["group"]] == 2, "extra" ])
test2 <- wilcox.test(delta ~ 1, data=sleep_pair)
print(test2[["p.value"]])
