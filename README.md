
## Stat159-fall2016-hw03
####Xiaoqian Zhu 24373359


Description


The purpose of this assignment is to extend the scope of the previous homework. In addition to keep applying regression analysis in R--using `lm()` function--we also write some functions as well as their unit tests. In this homework, we are going to reproduce the analysis from section 3.2 (pages 71 to 82), from the book ["An Introduction to Statistical Learning"](http://www-bcf.usc.edu/~gareth/ISL/) (by James et al).The data set is in the Advertising.csv file available [here](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv).

The main analysis involves carrying out a __multiple linear regression__ with 
predictor variables `TV`, `Radio`, `Newspaper`, and the response variable `Sales`. The ultimate output will be a report replicating the following results from Chapter 3:

- Table 3.3 (page 72): Coefficient estimates of simple regression models:
`Sales` on `TV`, `Sales` on `Radio`, and `Sales` on `Newspaper`. The book only 
shows two tables (those of `Radio` and `Newspaper`) but you should also
include the table for `TV`.
- Table 3.4 (page 74): Coefficient estimates of the least squares model.
- Table 3.5 (page 75): Correlation matrix.
- Table 3.6 (page 76): $RSE$, $R^2$ and $F$-statistic of the least squares model.
