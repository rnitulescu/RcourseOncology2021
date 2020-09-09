## 12) subset
dim(mtcars)
sub <- subset(mtcars, cyl == 6, c(mpg, cyl))
dim(sub)
