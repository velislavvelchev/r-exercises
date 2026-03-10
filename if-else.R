x <- 61
if((x >= 1) & (x < 60)){
  print("Average")
} else if((x >= 60) & (x < 75)){
  print("Above Average")
} else if((x >= 75) & (x <= 100)){
  print("Excellent")
} else {
  print("Please input a number between 1 and 100")
}

myinputs <- c(4,5,9,15,18,22)
lottery <- sample(1:49,6,replace=F)

wrongGuesses <- length(setdiff(lottery, myinputs)) 
if(wrongGuesses == 0){
  print("Mom won the lottery!")
} else {
  print("Mom did not win the lottery.")
}
