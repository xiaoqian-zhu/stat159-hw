# Load data
advertising <- read.csv("data/Advertising.csv", header = T)

TV = advertising$TV
Sales = advertising$Sales
Radio = advertising$Radio
Newspaper = advertising$Newspaper

# Regressions with single variable
regression_TV <- lm(Sales ~ TV)
regression_Radio <- lm(Sales ~ Radio)
regression_Newspaper <- lm(Sales ~ Newspaper)

# Summary of regressions with single variable
regression_sum_TV <- summary(regression_TV)
regression_sum_Radio <- summary(regression_Radio)
regression_sum_Newspaper <- summary(regression_Newspaper)

# Scatterplots of regression with single variable with regression line
# TV
png('images/scatterplot-tv-sales.png')
plot(TV, Sales, 
     main='Linear regression of TV ads on Sales with fitted regression line',
     xlab='TV', 
     ylab='Sales',
     pch=20,col='#000000' )
abline(lm(Sales ~ TV), col="#bd0300",lwd=2)
dev.off()

# Radio
png('images/scatterplot-radio-sales.png')
plot(TV, Sales, 
     main='Linear regression of radio ads on Sales with fitted regression line',
     xlab='Radio', 
     ylab='Sales',
     pch=20,col='#000000' )
abline(lm(Sales ~ Radio), col="#bd0300",lwd=2)
dev.off()

# Newspaper
png('images/scatterplot-newspaper-sales.png')
plot(TV, Sales, 
     main='Linear regression of newspaper ads on Sales with fitted regression line',
     xlab='Newspaper', 
     ylab='Sales',
     pch=20,col='#000000' )
abline(lm(Sales ~ Newspaper), col="#bd0300",lwd=2)
dev.off()

# Regression with multiple variables
regression_multi_variables <- lm(Sales ~ TV + Radio + Newspaper)
regression_sum_multi_variables <- summary(regression_multi_variables)

# Plots of regression with multiple variables
png("images/residual-plot.png")
plot(regression_multi_variables, which = 1)
dev.off()

png("images/normal-qq-plot.png")
plot(regression_multi_variables,which = 2)
dev.off()

png("images/scale-location-plot.png")
plot(regression_multi_variables,which = 3)
dev.off()

# Saving to Regression.RData
save(regression_TV, regression_Radio, regression_Newspaper, 
     regression_multi_variables, 
     regression_sum_TV,regression_sum_Radio,regression_sum_Newspaper, 
     regression_sum_multi_variables
     file = 'data/regression.RData')
