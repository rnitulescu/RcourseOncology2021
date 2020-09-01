## 15) reshape (wide -> long, long -> wide)
wide <- data.frame(id=1:2,
				   var_1=rnorm(2), var_2=rnorm(2))
print(wide)
reshape(wide, idvar="id", v.names="var",
		varying=c("var_1","var_2"),
		sep="_", direction="long")
