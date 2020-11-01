setEPS(); postscript("boxplot.eps", width=5, height=4)
boxplot(mpg ~ cyl, data=mtcars, main="Boxplot")
dev.off()
