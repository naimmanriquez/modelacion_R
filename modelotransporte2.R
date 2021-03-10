## Modelo de transporte

library(lpSolve)

## Definir la matriz de costos ##

mcostos <- matrix(c(8,6,10,14,10,4,9,11,6,5,7,8,8,10,5,3), ncol = 4, byrow = TRUE)

mcostos

## Definir la oferta

oferta <- c(2000,2500,1000,1500)

oferta

oferta_sig <- rep("=",4)

## Definir la demanda

demanda <- c(1500,2000,1000,2500)

demanda

demanda_sig <- rep("=",4)

## Solucion al modelo

psolcion <- lp.transport(mcostos,"min",oferta_sig,oferta,demanda_sig,
                         demanda)

psolcion$solution

psolcion$objval
