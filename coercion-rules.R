yearly_bonus <- c(T, T, T, F, T, T, T, T, T, T)

employee_name <- c("Belinda Johnes", "Maria Delar", 
                   "Math Smith", "Matt Williams",
                   "Robert Mathews", "Julia Walters",
                   "Andrea Cheng", "July Horitz",
                   "Danielle Muller", "Esteban Lugo")

salary <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)

employees <- c(employee_name, salary, yearly_bonus)
# every value is printed in quotes which means everything has been converted into a character string

print(typeof(employees))
coerce_check <- c(yearly_bonus, salary)
print(typeof(coerce_check))

# T, T, T, F, T, T, T, T, T, T has become
# 1, 1, 1, 0, 1, 1, 1, 1, 1, 1 


#If you check the type of the coerse.check vector you'll see that it's doubles


