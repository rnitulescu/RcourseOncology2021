MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH $(MYFLAGS) environment.R
	R CMD BATCH $(MYFLAGS) scalars_vectors.R
	R CMD BATCH $(MYFLAGS) matrices.R
clean : 
	@rm -rf *.Rout

