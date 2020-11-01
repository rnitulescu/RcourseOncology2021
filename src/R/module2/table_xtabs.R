table(mtcars[["cyl"]])         ## One-way
table(mtcars[["am"]])          ## One-way
xtabs(~ cyl + am, data=mtcars) ## Two-way
