#########################
## Module 3: Exercises ##
#########################

###
## Solutions to in-class problems only

## Problem 1

## Given
d <- 0.8

## Define power as a function of sample size
getPower <- function(x) {
    return( pwr::pwr.t.test(n=x, d=d, sig.level=0.05, type="two.sample", alternative="two.sided")[["power"]] )
}

## Plot results over range of sample sizes
plot(x=10:100, y=getPower(10:100), pch=16, col="black",
     xlim=c(0,110), ylim=c(0,1),
     xlab="Sample size (per group)", ylab="Power")

## Problem 2

## We set the seed so we can replicate the randomization list
set.seed(123)

## Step 1: We write a function that returns a permuted block based on the design we ask for
##         (We can re-use the function in Problem 3 below.)

getBlock <- function(nT, B) {
    lbl.lst <- toupper(letters[1:nT])
    r <- as.integer(B/nT)
    if (r < 1 | r*nT != B) stop("Block size and number of treatments do not concord.")
    return( sample(rep(lbl.lst, r), size=B, replace=FALSE) )
}

## Step 2: We write a function that returns a random block size from a list of choices provided

getRandSize <- function(sizes) {
    return( sample(sizes, size=1, replace=FALSE) )
}

## Finally, we put it together and replicate as needed to generate a long enough randomization list
N <- 10 ## Pick number of replications as needed

final_list <- c(unlist(replicate(N, getBlock(nT=2, B=getRandSize(sizes=c(2,4,6))))))
table(final_list) ## Check balance

final_list <- c(unlist(replicate(N, getBlock(nT=3, B=getRandSize(sizes=c(3,6,9))))))
table(final_list) ## Check balance


## Problem 3

## We create the randomization list for females
N_females <- 6
final_list_females <- c(unlist(replicate(N_females, getBlock(nT=2, B=4))))

## We create the randomization list for males (suppose we expect fewer males in study)
N_males <- 4
final_list_males <- c(unlist(replicate(N_males, getBlock(nT=2, B=4))))

## Check balance
table(final_list_females)
table(final_list_males)

