## 14) aggregate (collapse data)
x <- data.frame(id=c(1,1,2,2,2),
				var=c(2,8,5,10,15))

aggregate(var ~ id, data=x, FUN=mean)

aggregate(. ~ id, data=x, FUN=length)
