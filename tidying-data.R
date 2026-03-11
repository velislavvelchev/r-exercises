library(dplyr)
library(tidyr) 
library(readr) # parse_number function
library(stringr) # str_replace function
#Tidying the weather data
#Reading the weather data. Make sure you've downloaded the csv file. 
#If the csv isn't in your default R directory, make sure you add a directory path using '\' between each folder.# Example : 
#weather <- read.csv("C:/Users/pc/Dropbox/365/R PROGRAMMING/data/weather_untidy.csv", stringsAsFactors = FALSE)
weather <- read.csv("weather-untidy.csv", stringsAsFactors = FALSE)
weather <- as.tibble(weather)
# Gather daily measures and remove missing values. If you take a look at the raw data, you'll observe that there the majority of values are missing.
weather.a <- weather %>% gather(day, value, d1:d31, na.rm = TRUE)
#Arrange measurements by id, year and month.
weather.b <- weather.a %>% mutate(day = parse_number(day)) %>%
  select(id, year, month, day, element, value) %>%
  arrange(id, year, month, day)
#Include seperate columns for lowest and highest temperature measurments for each data in the data, which were previously seperate rows in the data.
weather.c <- weather.b %>% spread(element, value)


#Tidying the tb data
#Read data
tb <- read.csv("tb-untidy.csv", stringsAsFactors = FALSE)
tb <- as.tibble(tb)
#We use the str_replace method, to change the column names. For better readability we add . between strings and integers in the column names.
names(tb) <- str_replace(names(tb), "new_sp_", "")
names(tb) <- str_replace(names(tb), "m", "m.")
names(tb) <- str_replace(names(tb), "f", "f.")


#If we examine the data set by selecting it from the global environment pane, we'll observe that there are several columns, which are completely empty.
#We go ahead and remove them from the data set, as they carry no information.
tb$m.04 <- NULL
tb$m.514 <- NULL
tb$f.04 <- NULL
tb$f.514 <- NULL
tb$m.u <- NULL 
tb$f.u <- NULL


#Combine all m. and f. columns into one, and arrange by country
tb.a <- tb %>% gather(m.014:f.65, key = "column", value = "cases", na.rm = TRUE) %>% arrange(country)
#Further split the new column according to gender and age.
tb.b <- tb.a %>% separate(column, into = c("sex", "age"))
#Upon further examination we notice that the age column shows age intervals, rather than the actual age of participants. 
#We can transform the feature by adding '-' after the first age in the interval.
tb.b$age <- str_replace_all(tb.b$age, "0", "0-")
tb.b$age <- str_replace_all(tb.b$age, "15", "15-")
tb.b$age <- str_replace_all(tb.b$age, "25", "25-")
tb.b$age <- str_replace_all(tb.b$age, "35", "35-")
tb.b$age <- str_replace_all(tb.b$age, "45", "45-")
tb.b$age <- str_replace_all(tb.b$age, "55", "55-")
tb.b$age <- str_replace_all(tb.b$age, "65", "65-100")
#Examine the clean data frame
tb.b


