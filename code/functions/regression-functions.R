# Regression Functions

# Residual Sum of Squares (RSS)
# takes in "lm" object, returns RSS
residual_sum_squares <- function(x){
  sum(x$redisuals^2)
}

# Total sum of squares (TSS)
# takes in "lm" object, returns TSS
total_sum_squares <- funcions(x) {
  sum((x$fitted.values - mean(x$fitted.values))^2 + sum(x$residuals^2))
}

# R-Squared value (R^2)
# takes in "lm" object, returns R^2
r_squared <- function(x){
  1 - redidual_sum_squares(x)/total_sum_squares(x)
}

# F-statistic
# takes in "lm" object, return F-statistic
f_statistic <- function(x){
  n = length(x$redisuals)
  RSS = residual_sum_squares(x)
  TSS = total_sum_squares(x)
  p = x$rank # number of predictors
  (TSS-RSS)/p/(RSS/(n-p-1))
}

# RSE
residual_std_error <- function(x){
  n = length(x$redisuals)
  RSS = residual_sum_squares(x)
  p = x$rank # number of predictors
  sqrt(RSS/(n-p-1))
}
