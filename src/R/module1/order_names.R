## 13) order
x <- data.frame(id=c(3,1,2), var=rnorm(3))
x <- x[order(x[["id"]]), ]
print(x)

## 14) names
names(x)[names(x) == "var"] <- "new_name"
print(x)
