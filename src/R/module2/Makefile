MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH $(MYFLAGS) table_xtabs.R
	R CMD BATCH $(MYFLAGS) summary.R
	R CMD BATCH $(MYFLAGS) scatter.R
	R CMD BATCH $(MYFLAGS) qqplot.R
	R CMD BATCH $(MYFLAGS) hist_dens.R
	R CMD BATCH $(MYFLAGS) boxplot.R
	## Concatenate all the scripts together
	cat table_xtabs.R summary.R scatter.R qqplot.R \
	    hist_dens.R boxplot.R > module2.R
	cp module2.R ../../../module2.R
clean : 
	@rm -f *.eps *.Rout module2.R

