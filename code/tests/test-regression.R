require(testthat)
library(testthat)
source("../functions/regression-functions.R")
context("Test for statistics from simple linear regression and multiple regression regressions ")


# multipel regression
reg <-lm(mpg ~ disp + hp, data = mtcars)

# summary of 'reg'
regsum <- summary(reg)

#test the residual_sum_squares function
test_that("RSS function", {
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
  expect_type(residual_sum_squares(reg), 'double')
  expect_length(residual_sum_squares(reg), 1)
})

#test the total_sum_squares function
test_that("TSS function", {
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))
  expect_length(length(total_sum_squares(reg)),1)
  expect_type(total_sum_squares(reg),'double')
  
})

#test the r_square function
test_that ("R square function",{
  expect_equal(r_squared(reg),regsum$r.squared)
  expect_gt(r_squared(reg), 0)
  expect_lt(r_squared(reg), 1)
  expect_type(r_squared(reg),'double')
})

#test the F-statistic function
test_that ("F-statistic function",{
  expect_equal(f_statistic(reg),regsum$fstatistic[1])
  expect_length(length(f_statistic(reg)),1)
  expect_gt(f_statistic(reg), 0)
})

#test the residual_std_error function
test_that ("RSD function",{
  expect_equal(residual_std_error(reg), regsum$sigma)
  expect_length(length(residual_std_error(reg)),1)
  expect_type(residual_std_error(reg),'double')
})
