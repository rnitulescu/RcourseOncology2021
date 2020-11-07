## Two-sample
test1 <- t.test(extra ~ group, data=sleep)
print(test1[["p.value"]])

## One-sample (paired)
sleep_pair <- data.frame(
  delta=sleep[ sleep[["group"]] == 1, "extra" ] - 
        sleep[ sleep[["group"]] == 2, "extra" ])
test2 <- t.test(delta ~ 1, data=sleep_pair)
print(test2[["p.value"]])
