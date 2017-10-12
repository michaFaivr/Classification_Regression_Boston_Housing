function.unitarycircle<-function(var1,var2)
{
  axe1=cor(normBudget,PCAbudget2$scores[,var1])
  axe2=cor(normBudget,PCAbudget2$scores[,var2])
  xlab_list=c("PC1 45.2%","PC2 18.6%","PC3 11.7%")
  mtitl=c("Unitary Circle ",xlab_list[var1],xlab_list[var2])
  plot(axe1,axe2,xlim=c(-1,1),ylim=c(-1,1),xlab=xlab_list[var1],ylab=xlab_list[var2],type='n',main=mtitl)
  abline(v=0,h=0)
  abline(v=0,h=0)
  text(axe1,axe2,labels=Budgcolnames[-1]) #ANN was skipped
  arrows(0, 0, axe1, axe2, 
         length = 0.1, angle = 15, code = 2)
  t=seq(0,2*pi,0.01)
  x=cos(t)
  y=sin(t)
  lines(x,y,col='red')
  result<-0
  return(result)
}
#factorial plan1
unitarycircle(1,2) #
#factorial plan2
unitarycircle(1,3) #
#factorial plan3
unitarycircle(2,3) 
```