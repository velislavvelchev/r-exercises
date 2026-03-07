flip <- function(){
  coin <- c("heads", "tails")
  toss <- sample(coin, size=100, T, prob=c(0.3, 0.7))
  return(toss)
  
}


flip()