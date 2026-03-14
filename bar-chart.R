library(tidyverse)
library(ggthemes)

bar <- ggplot(emp, aes(title, fill = gender))

bar + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position")




# theme_fivethirtyeight() does not allow us to name the x- and y-axis; you can change it to one that works
# trying to pass the legend.position= argument into any available theme won't work; if you want to customise 
# your theme beyong font type and size, you would need to create a theme for yourself with the theme() function;
# it takes an abundance of arguments allowing you to modify virtually every aspect of your visualisation
# Here is an example with the classic theme

bar_classic <- ggplot(emp, aes(title, fill = gender))
bar_classic + geom_bar() + theme_classic() + scale_fill_manual(values = c("chartreuse4", "darkorange")) +
  labs(title = "Job Positions by Gender",
       y = "Employee count",
       x = "Job position")


bar_crowded <- ggplot(emp, aes(gender, fill = title)) 
bar_crowded + geom_bar() + theme_fivethirtyeight() + scale_fill_manual(values = c("magenta", "darkorange", "midnightblue",
                                                                                  "springgreen4", "brown1", "gold")) +
  labs(title = "Job Positions by Gender")



