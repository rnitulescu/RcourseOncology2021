setEPS(); postscript("hist_dens.eps", width=5, height=4)
mpg <- mtcars[["mpg"]]
hist(mpg, breaks=5, col="grey", probability=TRUE)
lines(density(mpg), col="blue", lty=2, lwd=2)
dev.off()
