setEPS(); postscript("scatter.eps", width=5, height=4)
plot(mpg ~ hp, data=mtcars, xlim=c(0, 400), ylim=c(0, 40),
     xlab="Horse power", ylab="Miles per gallon",
     main="Scatter plot", pch=16, col=(cyl/2)-1)
legend("topright", c("4", "6", "8"), title="Cylinders",
       col=1:3, pch=16, cex=0.8, bty="n")
dev.off()
