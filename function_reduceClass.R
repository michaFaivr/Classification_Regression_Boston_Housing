function.reduceClass <- function(data, Class, new.class){
  data.col = data$Class
  print(head(data$Class))
  
  data.col[data.col %in% c(1,2,3,5)] = 11
  data.col[data.col %in% c(6)]       = 12
  data.col[data.col %in% c(7,8,9)]   = 13

  print(head(data.col))
  #data.col = data.col-10
  data$new.class = data.col
  return(data$new.class)
}