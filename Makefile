.PHONY: all data tests eda regression report clean

all: data eda regression session-info.txt report

# Prony Targets
adv = data/Advertising.csv

# loading csv
data:
  curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> $(adv)

eda:
	Rscript code/scripts/eda-script.R

regression:
	Rscript code/scripts/regression-script.R

session-info.txt:
	Rscript code/scripts/session-info-script.R

report:
	Rscript -e "library(rmarkdown); render('report/report.Rmd','pdf_document')"

tests:
	Rscript code/test-that.R 

clean:
	rm report/report.pdf