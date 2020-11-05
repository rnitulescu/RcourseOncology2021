library(survival)
sdf <- survdiff(Surv(time, status) ~ sex,
                data=kidney)
print(sdf)
p.val <- 1 - pchisq(sdf[["chisq"]],
                    length(sdf[["n"]]) - 1)
print(p.val)
