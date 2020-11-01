summary(mtcars[["mpg"]])

sd(mtcars[["mpg"]])
var(mtcars[["mpg"]])
cor(mtcars[["mpg"]], mtcars[["hp"]])

quantile(mtcars[["mpg"]],
         probs=c(0.01, 0.05, 0.5, 0.95, 0.99))
