function.uniformClasses <- function(data, Class, nb.class){
  #step = 1./nb.class
  step = 0.1
  percent.vector = seq(from = 0., to = 1., by = step)
  #percent.vector = 
  # matching between data$Class and new vector for uniform discretization
  print(head(data$Class))
  data.thresholds = quantile(data$Class, probs = as.vector(percent.vector))
  print("data.thrresholds")
  print(data.thresholds)
  data.bin = cut(data$Class, breaks=data.thresholds)
  # for k.cls in data.thresholds[1:nb.class-1]{
  #   data$bin[] = data$Class
  # }
  print("data bin")
  print(data.bin)
  return(data.bin)
}