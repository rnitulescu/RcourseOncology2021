setEPS(); postscript("qqplot.eps", width=5, height=4)
mpg <- mtcars[["mpg"]]
qqnorm(mpg); qqline(mpg)
dev.off()
