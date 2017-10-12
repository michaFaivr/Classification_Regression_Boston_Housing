# Use bin.quality as response and exclude 'quality'
function.accuracy <- function(target, predictor){
  ct <- table(target, predictor)
  diag.prop.table <- diag(prop.table(ct, 1))
  print(head(diag.prop.table))
  # total percent correct
  sum(diag(prop.table(ct)))
  return(0)
}