getDataset <- function(fileWineQual,dataWine){
  colnames = read.table(fileWineQual,header=FALSE,nrows=1,";")  
  colnames = names(colnames)
  #stringsAsFactors = FALSE)
  #names(data_olympics)=colnames
  print(colnames)
  tidy.name.vector <- make.names(colnames, unique=TRUE)
  print(tidy.name.vector)
  print(dataWine)
  #nb cols=nb vars :
  nb_obs=nrow(dataWine)
  nb_vars=ncol(dataWine)
  #print(dataWine$V12)
  #print(wineMatrix)
  print(nb_obs)
  print(nb_vars)
  output <- list(colnames,nb_obs,nb_vars)
  return(output)
}