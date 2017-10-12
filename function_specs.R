function.specs <- function(df.data){
  colnames = names(df.data)
  nb_obs = nrow(df.data)
  nb_vars = ncol(df.data)
  
  print(nb_obs)
  print(nb_vars)
  
  output = list(nb_obs,nb_vars,colnames)
  
  return(output)
}
  