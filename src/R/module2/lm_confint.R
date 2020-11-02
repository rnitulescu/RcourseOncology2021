fit <- lm(mpg ~ hp, data=mtcars)

coefficients(fit)

confint(fit)

vcov(fit)
