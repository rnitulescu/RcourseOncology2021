#########################
## Module 2: Exercises ##
#########################

###
## Part I: In-class problems (solutions available)

## Problem 1: Create your own data set, export it to csv or xlsx and reload it into R

## Problem 2: Using the built-in iris data, do the following:
##            a) Graph scatter plots of sepal length vs. sepal width
##               and petal length vs. petal width with different colors
##               for different plant species and include a legend for the species
##            b) Graph a histogram with density overlaid for one of the four variables (sepal/petal length/width)
##            c) Fit a linear model of your choice using these data
data(iris)

## Problem 3: Using the built-in colon data from the survival package, do the following:
##            a) Use survfit to estimate Kaplan-Meier rates of survival by treatment arm
##            b) Plot the survival curves by treatment arm
##            c) Compute the p-value for a log-rank test between the three arms
##            d) Use the Cox PH model to compute hazard ratios for the treatment arm effects
##               and check the proportionality assumption
library(survival)
data(colon) ## Keeping only death event data
colon <- subset(colon, etype == 2)

