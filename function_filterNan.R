function_filterNan <- function(dataWine){
  df <- dataWine
  len.df = nrow(df)
  print(len.df)
  df[apply(df[1:len.df,], 1, function(X) all(!is.na(X))),]
  #print(head(df))
  len.df = nrow(df)
  print(len.df)
  dataWine.filter = df
  return(dataWine.filter)
}