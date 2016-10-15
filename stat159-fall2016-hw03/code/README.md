##Code:
This folder includes all the code scripts for this homework. There are three subdirectories inside this folder, and one extra file `test-that.R` : `functions/`, `scripts/`, `tests/` and `test-that.R`.


-Functions:This folder has the file `regression-functions.R` that includes all the functions that take an object of class `"lm"` as input and then compute values for $RSE$, $R^2$ and $F$-statistic.
-Scripts:  
  + `eda-script.R` reads in the `Advertising.csv` data set, and computes summary statistics, histograms for all the variables (`TV`, `Radio`,`Newspaper`, and `Sales`), matrix of correlations among all variables,and scatterplot-matrix (pairwise scatterplots). 
The clearly labeled summary statistics and the matrix of correlations are saved in the file `eda-output.txt`. In addition to including the correlation matrix in `eda-output.txt`, it is also saved in binary format `correlation-matrix.RData`. In turn, each exploratory chart is saved in 
PNG format.    
  + `regression-script.R` reads in the `Advertising.csv` data set, and computes
a `"regression"` object---via `lm()`---as well as the summary of such 
regression object---via `summary()`. These objects are saved in the file
`regression.RData`. This script also produces the three diagnostics 
plots `residual-plot.png`, `scale-location-plot.png`, and 
`normal-qq-plot.png` (see `help(plot.lm)` for more info).  
  + `session-info-script.R` is a script that includes `library()` calls to 
all the packages that I use for the homework, as well as the output of
the function `sessionInfo()`. The output is saved via `sink()` to the file `session-info.txt`, which is at the  project's top level directory.  
-Tests: This folder has the file `test-regression.R` that includes all the functions that take an object of class `"lm"` as input and then compute values for $RSE$, $R^2$ and $F$-statistic.
-test.that.R: This contains the general set up of the test-that functions for this homework.

