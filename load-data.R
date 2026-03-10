my_pok <- read.table("pokRdex_comma.csv", 
                     sep = ',',
                     header = TRUE,
                     stringsAsFactors = FALSE)

my_pok <- read.csv("pokRdex_comma.csv", FALSE)
my_pok

my_data <- read.csv("employee_data.csv", FALSE,skip = 23, nrows = 200)
my_data

names(my_data) <- c("Employee number", "First name", "Last name", "Birth date", "Gender", 
                          "Job title", "Salary", "From date", "To date")

write.csv(my_data, file = "employee_exercise.csv", row.names = FALSE)

my_data_cleaned <- read.csv("employee_exercise.csv", FALSE, col.names = c("Employee number", "First name", "Last name", "Birth date", "Gender",
                                                                          "Job title", "Salary", "From date", "To date"),
                            skip = 2)
my_data_cleaned

