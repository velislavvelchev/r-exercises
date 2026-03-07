employee_name <- c("Belinda Johnes", "Maria Delar", 
                  "Math Smith", "Matt Williams",
                  "Robert Mathews", "Julia Walters",
                  "Andrea Cheng", "July Horitz",
                  "Danielle Muller", "Esteban Lugo")

print(typeof(employee_name))

salary <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)

print(typeof(salary))

employees <- c(employee_name, salary)
print(typeof(employees))

# seems like R has converted all of the double values to characters 
# this happens often in R and is done in strict adherence to rules
# called COERCION rules
# this will be the topic of the next lesson
