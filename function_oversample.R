function.oversampling <- function(my.dataset,Class){
  library(rpart)
  install.packages("ROSE")
  library(ROSE)
  #my.dataset = dataWine[-n]
  #over sampling
  data_balanced_over <- ovun.sample(Class ~ ., data = my.dataset, method = "over",N = 7*1000)$data
  table(data_balanced_over$Class)
  
  #check the histogram
  ggplot(data=data_balanced_over, aes(my.dataset$Class)) + geom_histogram()
  
  return(data_balanced_over)
}