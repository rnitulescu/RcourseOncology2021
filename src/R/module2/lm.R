fit <- lm(mpg ~ hp + cyl + hp:cyl, data=mtcars)
summary(fit)
