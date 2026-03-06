# extract specific value
print(salary[6])
print(salary["Julia Walters"])

# all the values but the second one
print(salary[-(2)])

#Values 1, 3, 5, 7, and 9
print(salary[c(1, 3, 5, 7, 9)])

# All the values but the 4th, 5th, and 6th
print(salary[-(4:6)])

# notice that R also returns the NA elements because it doesn't know their values
print(salary[salary > 2000])

