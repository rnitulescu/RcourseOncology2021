## 3) Matrices
x <- c(1, 2, 3); y <- c(4, 5, 6)
M <- x %*% t(y)
N <- matrix(c(5, 4, 3, 3, 6, 5, 7, 7, 6),
			ncol=3, byrow=TRUE)
X <- M + N
Y <- solve(X)
print(X %*% Y)
