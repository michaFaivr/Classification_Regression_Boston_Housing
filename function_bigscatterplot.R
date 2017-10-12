big.scatterplot <- function(df,x,y,group){
  #scatterPlot <- ggplot(dataWine,aes(fixed.acidity,pH , color=bin.quality)) +
  scatterPlot <- ggplot(df,aes(x, y , color=group)) +
    geom_point() + 
    #scale_color_manual(values = c('#999999','#E69F00','#999000')) + 
    scale_fill_manual(name = "Values", values=setNames(colors, 1:3))
    theme(legend.position=c(0,1), legend.justification=c(0,1))
  # Courbe de densité marginale de x (panel du haut)
  xdensity <- ggplot(df, aes(x, fill=group)) + 
    geom_density(alpha=.5) + 
    #scale_fill_manual(values = c('#999999','#E69F00','#999000')) + 
    scale_fill_manual(name = "Values", values=setNames(colors, 1:3))
    theme(legend.position = "none")
  # Courbe de densité marginale de y (panel de droite)
  ydensity <- ggplot(df, aes(y, fill=group)) + 
    geom_density(alpha=.5) + 
    #scale_fill_manual(values = c('#999999','#E69F00','#999000')) + 
    scale_fill_manual(name = "Values", values=setNames(colors, 1:3))
    theme(legend.position = "none")
  
  blankPlot <- ggplot()+geom_blank(aes(1,1))+
    theme(
      plot.background = element_blank(), 
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(), 
      panel.border = element_blank(),
      panel.background = element_blank(),
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      axis.text.x = element_blank(), 
      axis.text.y = element_blank(),
      axis.ticks = element_blank(),
      axis.line = element_blank()
    )
  
  library("gridExtra")
  grid.arrange(xdensity, blankPlot, scatterPlot, ydensity, 
               ncol=2, nrow=2, widths=c(4, 1.4), heights=c(1.4, 4))
  return(0)
}