MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH $(MYFLAGS) environment.R
	R CMD BATCH $(MYFLAGS) scalars_vectors.R
	R CMD BATCH $(MYFLAGS) matrices.R
	R CMD BATCH $(MYFLAGS) lists.R
	R CMD BATCH $(MYFLAGS) dataframes.R
	R CMD BATCH $(MYFLAGS) if_else.R
	R CMD BATCH $(MYFLAGS) for_while.R
	R CMD BATCH $(MYFLAGS) repeat_next_break.R
	R CMD BATCH $(MYFLAGS) c_rbind_cbind.R
	R CMD BATCH $(MYFLAGS) merge.R
	R CMD BATCH $(MYFLAGS) order_names.R
	R CMD BATCH $(MYFLAGS) aggregate.R
	R CMD BATCH $(MYFLAGS) reshape.R
	## Concatenate all the scripts together
	cat environment.R scalars_vectors.R matrices.R lists.R \
	    dataframes.R if_else.R for_while.R repeat_next_break.R \
	    c_rbind_cbind.R merge.R order_names.R aggregate.R \
	    reshape.R > module1.R
	cp module1.R ../../../module1.R
clean : 
	@rm -f *.Rout module1.R

