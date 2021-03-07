
## Modelo de transporte

library(lpSolve)

A <- lp.transport(cost.mat=matrix(c(10,30,15,8,12,25,5,35,20,7,14,22),nrow=3,byrow=T),
                    direction="min",row.signs=c(rep("=",3)),row.rhs=c(50,20,40),
                    col.signs=c(rep("=",4)),col.rhs=c(35,35,22,18),integers=NULL)

A

A$solution

