library('ggplot2')


passed_inspection <- c("Yes", "Yes", "No", "Yes", "No", "No", "Yes")
carsi <- cbind(cars, "Inspected" = passed_inspection)


FordFusion <- data.frame(row.names = "FordFusion", Year = 6, Size = "large", MPG = 27, Geerbox = "auto", Inspected = "Yes")
carsif <- rbind(carsi, FordFusion)


ncol(carsif)
nrow(carsif)
colnames(carsif)
rownames(carsif)
str(carsif)          # two numeric and three factor variables


class(diamonds)
# alternatively
str(diamonds)
diamonds.df <- as.data.frame(diamonds)
class(diamonds.df)


str(USJudgeRatings)
my.df <- USJudgeRatings
my.df$AVRG <- rowMeans(my.df)
avrg <- my.df["AVRG"]
