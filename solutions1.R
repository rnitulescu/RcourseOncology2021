#########################
## Module 1: Exercises ##
#########################

###
## Solutions to in-class problems only

## Problem 1
X <- matrix(rbinom(16, 20, 0.5), ncol=4, byrow=TRUE)
print(X)
## a)
print( X[, 2] )
## b)
print( X[3, ] )
## c)
print( X[X %% 2 == 1] )


## Problem 2
sum <- 0
for (i in 1:5) {
	sum <- sum + i^2
}
print(sum)


## Problem 3
data(mtcars)
## a)
mean(mtcars[ mtcars[["cyl"]] == 4 , "mpg" ])
## b)
data.frame(table(mtcars[["cyl"]])) ## But labeling of columns is off
## This other solution (below) has nicer labeling, but is a bit more hacky
## and potentially confusing. In place of "cyl" in "num_cars=cyl"
## any variable could have been used, since the columns are all
## the same length
with(mtcars, aggregate(x=list(num_cars=cyl), by=list(cyl=cyl), FUN=length))
## Also note you can define functions and pass them to FUN
## Example: FUN = function(x) { length(unique(x)) }
## This counts unique elements in x instead of just the number of elements

