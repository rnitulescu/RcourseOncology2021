## 9) Repeat, next, break
##    Add up all odd numbers no greater than 5
i <- 0; sum <- 0
repeat {
	i <- i + 1
	if ( (i %% 2) == 0 ) { ## If i is even, skip
		next
	} else if (i > 5) { ## If i greater than 5, exit
		break
	}
	sum <- sum + i
	print(paste("Sum:", sum))
}
