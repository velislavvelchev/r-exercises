library(tidyverse) 
library(psych)

library(scales)

data <- read_csv("real_estate_price_size_year_view.csv")
  
describe(data) # get a sense of your data
summary(data) # get a sense of your data

point <- format_format(big.mark = " ", decimal.mark = ",", scientific = FALSE) 
# this helps us get rid of the scientific notation in the graph

ggplot(data, aes(price, size)) + 
  geom_point() +
  theme_light() +
  labs(x = "House price (in USD)",
       y = "House size (in sq ft)",
       title = "House pricing and size") +
  scale_x_continuous(labels = point) + 
  scale_y_continuous(labels = point) 
# this is where we tell ggplot2 to use the format we set up above (point)


### Define the linear model 

linmod <- lm(price~size, data = data)

ggplot(data, aes(price, size)) + 
  geom_point() +
  theme_light() +
  stat_smooth(method = "lm", se = FALSE) +
  labs(x = "House price (in USD)",
       y = "House size (in sq ft)",
       title = "House pricing and size") +
  scale_x_continuous(labels = point) + 
  scale_y_continuous(labels = point) 
# this is where we tell ggplot2 to use the format we set up above (point)

### Print the results of the model


summary(linmod)

### How many observations was the regression run on?


# 100. this is evident from the degrees of freedom (residual)
# degrees of freedom (residual) is calculated based on the sample size (n) minus the number of parameters (k) being estimated minus 1
# degrees of freedom (residual) = n - k - 1 
# 98 = n - 1 - 1 
# n = 100

# The value of R squared tells us that this regression model explains a big part of the variablity in the model (~75%)

# Size is indeed a statistically significant predictor of price. This is evident from the p-value of the t-statistic.

### What is the regression equation associated with this regression model?


# y-hat = 101912.6 + 223.2*x1 
