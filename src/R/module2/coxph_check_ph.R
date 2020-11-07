library(survival)
ds <- within(lung, death <- ifelse(status == 2, 1, 0))
fit <- coxph(Surv(time, death) ~ age, data=ds)
(fit.zph <- cox.zph(fit))
## Scaled Schoenfeld residuals
setEPS(); postscript("schoenfeld.eps", width=5, height=4)
plot(fit.zph)
dev.off()
