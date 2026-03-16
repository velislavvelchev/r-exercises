library(psych)

kg <- read.csv("weight_data_exercise_kg.csv") # load your data
describe(kg) # understand your data

lbs <- read.csv("weight_data_exercise_lbs.csv") # load your data
describe(lbs) # understand your data


# H0 = The difference b/w B - A <= 0 Negative or equal (86(B) - 88 (A)) < 0 (weight loss program not working)
# H1 = The difference b/w B - A > 0 Positive (86(B) - 80 (A)) > 0 (weight loss program working)

dep.t.test <- t.test(kg$before, kg$after, paired=TRUE, alternative='greater')
dep.t.test

# t = 2.0058, df = 9, p-value = 0.03792
# We reject the null hypothesis at 0.05 significance

# The test is one-sided. We want to know if people are actually losing weight. p = 0.038
# At 1% significance we accept the null hypothesis. The data shows that the program is not working.
# At 5% significance, we reject the null hypothesis. Therefore, the program is successful.
# At 10% significance, there is enoug statistical evidence that the program is working.
