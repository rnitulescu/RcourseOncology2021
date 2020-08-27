MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH $(MYFLAGS) environment.R
	R CMD BATCH $(MYFLAGS) scalars_vectors.R
	R CMD BATCH $(MYFLAGS) matrices.R
	R CMD BATCH $(MYFLAGS) lists.R
	R CMD BATCH $(MYFLAGS) dataframes.R
	R CMD BATCH $(MYFLAGS) if_else.R
	## Concatenat all the scripts together
	cat environment.R scalars_vectors.R matrices.R lists.R \
	    dataframes.R if_else.R > module1.R
	cp module1.R ../../../module1.R
clean : 
	@rm -f *.Rout module1.R

