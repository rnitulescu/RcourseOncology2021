#########################
## Module 2: Exercises ##
#########################

###
## Solutions to in-class problems only

## Problem 1

## First, build some data set
ds <- data.frame(
  id = 1:10,
  y = rnorm(10, 0, 1),
  x = rpois(10, 2.5)
)

## Second, export it to a csv file
write.csv(ds, file="ds.csv")

## Finally, load the csv file
ds2 <- read.csv(file="ds.csv")

## And check it
print(ds)
print(ds2)

## Clean-up
file.remove("ds.csv")


## Problem 2
data(iris)

## a) Scatter plots
par(mfrow=c(1,2))
plot(Sepal.Length ~ Sepal.Width, data=iris, type="p",
     main="Sepal", pch=16, col=as.numeric(Species))
plot(Petal.Length ~ Petal.Width, data=iris, type="p",
     main="Petal", pch=16, col=as.numeric(Species))
legend("bottomright",
       as.character(unique(iris[["Species"]])),
       col=as.numeric(unique(iris[["Species"]])), pch=16, bty="n")

## b) Histogram and density plots
hist(iris[["Sepal.Width"]], col="grey", probability=TRUE)
lines(density(iris[["Sepal.Width"]]), lty=2, col="blue")

## c) Fit a linear model
fit <- lm(Petal.Length ~ Petal.Width*Species, data=iris)
summary(fit)
## Check assumptions
plot(fit)
## Plot empirical cdfs for observed and predicted
observed <- iris[["Petal.Length"]]
predicted <- predict(fit)
plot(ecdf(observed), col="black", main="ECDF")
lines(ecdf(predicted), col="red")
legend("bottomright", c("Observed","Predicted"), pch=16, col=c("black","red"), bty="n")


## Problem 3
library(survival)
data(colon) ## Keeping only death event data
colon <- subset(colon, etype == 2)

## a) Kaplan-Meier estimates
kmfit <- survfit(Surv(time, status) ~ rx, data=colon)
print(kmfit)
summary(kmfit)

## b) Plot survival curves
plot(kmfit, col=1:3, ylab="Proportion alive", xlab="Time")
legend("bottomright", c("Obs","Lev","Lev+5FU"), lty=1, lwd=2, col=1:3, bty="n")

## c) Compute p-value for log-rank test
kmdiff <- survdiff(Surv(time, status) ~ rx, data=colon)
p.val <- 1 - pchisq(kmdiff[["chisq"]], length(kmdiff[["n"]]) - 1)
print(p.val)

## d) Cox PH model
fit <- coxph(Surv(time, status) ~ rx, data=colon)
summary(fit)
exp(coefficients(fit))
exp(confint(fit))
fit.zph <- cox.zph(fit)
print(fit.zph)
plot(fit.zph)

