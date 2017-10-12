function.balancer <- function(my.dataset,Class){
  # ###install.packages("unbalanced")
  # library(unbalanced)
  # n<-ncol(my.dataset)
  # output<-my.dataset$Class
  # input <-my.dataset[ ,n-1]
  # 
  # #balance the dataset
  # data<-ubBalance(X= input, Y=output, type="ubSMOTE", percOver=300, percUnder=150, verbose=TRUE)
  # balancedData<-cbind(data$X,data$Y)
  
  balancedData <- my.dataset
  df <- balancedData  
  
  for (class.lev in 3:9){
    print(class.lev)
    number.class.quality = sum(my.dataset$Class==class.lev)
    print(number.class.quality)
    if (number.class.quality < 300){
      replic = apply(df[which(df$Class==class.lev),], 1 ,function(x){rep(x,round(1000/(number.class.quality+1)))})
      print(dim(replic))
    }
  }
  balancedData = df
  print(dim(balancedData))
  
  rep(df[which(df$Class==3)], each=30)
  
  
  #check the histogram
  ggplot(data=df, aes(df$Class)) + geom_histogram()
  balancedData = df
  print(dim(balancedData))
  
  return(balancedData)
}