MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH --quiet --no-timing pwr_2p2n.R
	R CMD BATCH --quiet --no-timing pwr_t2n.R
	R CMD BATCH $(MYFLAGS) simple_randomization.R
	R CMD BATCH $(MYFLAGS) replacement_randomization.R
	R CMD BATCH $(MYFLAGS) permuted_blocks.R
	## Concatenate all the scripts together
	cat pwr_2p2n.R pwr_t2n.R \
	    simple_randomization.R replacement_randomization.R \
	    permuted_blocks.R > module3.R
	cp module3.R ../../../module3.R
clean : 
	@rm -f *.Rout module3.R

