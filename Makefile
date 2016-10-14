.PHONY: all data tests eda regression report clean session

#Prony Targets
all = eda regression report
eda = data/eda-output.txt
regression = data/regression.RData
report = report/report.pdf
session = session-info.txt
Adv = data/Advertising.csv

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> $(Adv)

tests:
	cd code; Rscript test-that.R

session-info.txt:
	cd code/scripts; Rscript session-info-script.R


#Now creating files once called from the phony targets
data/regression.RData:
	cd code/scripts; Rscript regression-script.R

data/eda-output.txt:
	cd code/scripts; Rscript eda-script.R

report/report.pdf: data/regression.RData data/eda-output.txt
	cd report; R -e "rmarkdown::render('report.Rmd')"
	
clean:
	rm report/report.pdf