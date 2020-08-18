## 1) Scalars
a <- 1
b <- 2
c <- a + b
print(sprintf("a + b = %g", c))
## 2) Vectors
x <- c(1, 2, 3); y <- c(4, 5, 6)
print(x * y)
print(t(x) %*% y)
