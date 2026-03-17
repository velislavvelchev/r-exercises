library(psych)

grades <- read.csv("independent-samples.csv") # load your data
describe(kg) # understand your data

grades <- gather(grades, Engineering, Management,
                 key='course',
                 value='grades')


ind.t.test <- t.test(grades~course, data=grades, mu= -4)
# two-tailed independent samples t-test with the grades being grouped by the course

ind.t.test
