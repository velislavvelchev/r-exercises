#including the relevant libraries
library(tidyverse)
library(ggthemes)
install.packages("wesanderson")
library(wesanderson)
library(scales)

#Read and filter the employee data set. Factor on the gender and title variable
emp <- read.csv("employee_data.csv", skip = 23, stringsAsFactors = FALSE)
emp <- as.tibble(emp)
emp$gender <- factor(emp$gender)
emp$title <- factor(emp$title, levels = c("Senior Engineer", "Engineer", "Assistant Engineer", "Senior Staff", "Technique Leader", "Staff"), ordered = TRUE)


#Select employees with 12 month salary higher than 45000
emp.a <- filter(emp, salary > 45000)

#Create a gg boxx plot. The function in gg_plot is geom_boxplot. 

boxx <- ggplot(emp, aes(x=title, y=salary))
my.bp <- boxx + geom_boxplot(outlier.color = "orangered1", outlier.shape = 3) +
  geom_jitter(width = 0.3, aes(color = gender)) +
  #Custom style the box plot, by including a title and subtitle
  ggtitle("Salary distribution", subtitle = "based on position and gender") +
  #add y and x labels
  ylab("Salary") + xlab("Job position") + 
  #choose a theme for the chart 
  theme_economist_white() + 
  #position the legend and align the text elements
  theme(legend.position = "right", axis.text.x = element_text(angle = 90, hjust = 1)) +
  # switch x and y axis positions - for better readability.
  coord_flip() + scale_y_continuous(labels = comma)


my.bp + scale_color_manual(values=wes_palette(name = "Darjeeling1", n = 2))
my.bp + scale_color_brewer(palette="Set1")
