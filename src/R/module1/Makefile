MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH $(MYFLAGS) environment.R
	R CMD BATCH $(MYFLAGS) scalars_vectors.R
	R CMD BATCH $(MYFLAGS) matrices.R
	R CMD BATCH $(MYFLAGS) lists.R
	R CMD BATCH $(MYFLAGS) dataframes.R
clean : 
	@rm -rf *.Rout

