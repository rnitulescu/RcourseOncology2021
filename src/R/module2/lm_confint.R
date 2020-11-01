fit <- lm(mpg ~ hp + cyl + hp:cyl, data=mtcars)
confint(fit)
