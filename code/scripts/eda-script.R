advertising <- read.csv('data/Advertising.csv', header = TRUE)

tv = advertising$TV
radio = advertising$Radio
newspaper = advertising$Newspaper
sales = advertising$Sales

# Images
# TV
png('images/histogram-tv.png')
hist(as.numeric(tv), breaks = 20,
     main = 'Histogram of Frequency of TV Advertising Budgets',
     xlab = 'TV Advertising Budget (in thousands of dollars)',
     ylab = 'Frequency')
dev.off()

# Sales
png('images/histogram-sales.png')
hist(as.numeric(sales), breaks = 20,
     main = 'Histogram of Frequency of Sales',
     xlab = 'Sales (in thousands of units)',
     ylab = 'Frequency')
dev.off()

# Radio
png('images/histogram-radio.png')
hist(as.numeric(radio), breaks = 10,
     main = 'Histogram of Frequency of Radio',
     xlab = 'Radio Advertising Budget (in thousands of dollars)',
     ylab = 'Frequency',)
dev.off()

# Newspaper
png('images/histogram-newspaper.png')
hist(as.numeric(newspaper), breaks = 10,
     main = 'Histogram of Frequency of Newspaper',
     xlab = 'Newspaper Advertising Budget (in thousands of dollars)',
     ylab = 'Frequency',)
dev.off()

# Summary Tables
correlation_matrix <- cor(advertising)
sink('data/eda-output.txt')
cat('Summary of TV\n')
summary(as.numeric(tv))
cat('Summary of Radio\n')
summary(as.numeric(radio))
cat('Summary of Newspaper\n')
summary(as.numeric(newspaper))
cat('Summary of Sales\n')
summary(as.numeric(sales))
cat('\nMatrix of Correlations\n')
print(correlation_matrix)
sink()

# scatterplot for correlation matrix
png('images/scatterplot-matix.png')
pairs(advertising)
dev.off()
save(correlation_matrix,file = 'data/correlation-matrix.RData')
