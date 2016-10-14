.PHONY: all data eda regression report tests clean

# Prony Targets
adv = data/Advertising.csv
regression = data/regression.RData
cormatrix = data/correlation-matrix.RData
func = code/Functions/regression-functions.R
rmd = report/report.rmd

all: eda regression report

# loading csv
data:
	cd data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

# test-that
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