MYFLAGS := --vanilla --quiet --no-timing
all :
	R CMD BATCH --quiet --no-timing save_load.R
	R CMD BATCH $(MYFLAGS) table_xtabs.R
	R CMD BATCH $(MYFLAGS) summary.R
	R CMD BATCH $(MYFLAGS) scatter.R
	R CMD BATCH $(MYFLAGS) qqplot.R
	R CMD BATCH $(MYFLAGS) hist_dens.R
	R CMD BATCH $(MYFLAGS) boxplot.R
	R CMD BATCH $(MYFLAGS) fisher.R
	R CMD BATCH $(MYFLAGS) student.R
	R CMD BATCH $(MYFLAGS) wilcoxon.R
	R CMD BATCH $(MYFLAGS) surv_log_rank.R
	R CMD BATCH $(MYFLAGS) lm.R
	R CMD BATCH $(MYFLAGS) lm_confint.R
	R CMD BATCH $(MYFLAGS) lm_matrix.R
	R CMD BATCH $(MYFLAGS) logit.R
	R CMD BATCH $(MYFLAGS) logit_confint.R
	R CMD BATCH $(MYFLAGS) coxph.R
	R CMD BATCH $(MYFLAGS) coxph_confint.R
	R CMD BATCH $(MYFLAGS) coxph_check_ph.R
	## Concatenate all the scripts together
	cat save_load.R table_xtabs.R summary.R scatter.R  \
	    qqplot.R hist_dens.R boxplot.R \
	    fisher.R student.R wilcoxon.R surv_log_rank.R  \
	    lm.R lm_confint.R lm_matrix.R \
	    logit.R logit_confint.R coxph.R \
	    coxph_confint.R coxph_check_ph.R > module2.R
	cp module2.R ../../../module2.R
clean : 
	@rm -f *.eps *.Rout module2.R

