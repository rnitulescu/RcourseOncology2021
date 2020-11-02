y <- c(mtcars[["mpg"]])
X <- matrix(c(rep(1, nrow(mtcars)),
              mtcars[["hp"]]), 
            ncol=2, byrow=FALSE)
b <- solve(t(X) %*% X) %*% t(X) %*% y
e <- y - (X %*% b)
sigsq <- as.numeric( (1/(nrow(mtcars)-2)) * (t(e) %*% e) )
varcovar <- sigsq * solve(t(X) %*% X)
print(b)
print(varcovar)
