### Visual examination of the skew


sk1 <- read.csv("skew_1.csv")
sk2 <- read.csv("skew_2.csv")

skew1 <- ggplot(data=sk1, aes(x = `Dataset.1`))
skew1 + geom_histogram(
  binwidth=100,
  color="darkslategray",
  fill="darkslategray4",
  alpha=0.5
) + theme_light()


skew2 <- ggplot(data = sk2, aes(x = `Dataset.2`))
skew2 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()


library(psych)


describe(sk1)
describe(sk2)


# Note: sometimes, using a graph to identify the skew can be misleading.	
# The sk2 dataset has a relatively strong negative skew ( -0.33 ). 	
# However, from a histogram with a few bins, you cannot clearly determine the skew.	
# For best results, use a more precise measure of skewness, such as R's calculations, instead of a simple graph	
