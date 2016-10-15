.PHONY: all data tests eda regression report clean

all: data eda regression session-info.txt report

# Prony Targets
adv = data/Advertising.csv

# loading csv
data:
  curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> $(adv)

# Run the scripts in code/scripts folder
eda:
	Rscript code/scripts/eda-script.R

regression:
	Rscript code/scripts/regression-script.R

session-info.txt:
	Rscript code/scripts/session-info-script.R

# Generate report.pdf
report:
	Rscript -e "library(rmarkdown); render('report/report.Rmd','pdf_document')"

# Run test through test-that file
tests:
	Rscript code/test-that.R 

# Delet the report.pdf
clean:
	rm report/report.pdf