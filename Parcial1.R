## EJERCICIO 1 PRIMER PARCIAL ##

library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(250,150))
add.constraint(lp.model, c(2,1.5), "<=", 40)
add.constraint(lp.model, c(1.5,1), "<=", 40)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)

## EJERCICIO 2 PRIMER PARCIAL ##

library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(1,2))
add.constraint(lp.model, c(1,3), "<=", 9)
add.constraint(lp.model, c(2,1), "<=", 8)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)

## EJERCICIO 4 PRIMER PARCIAL ##

library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(30,15))
add.constraint(lp.model, c(2,1), "<=", 200)
add.constraint(lp.model, c(2,3), "<=", 300)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)

## EJERCICIO 5 PRIMER PARCIAL ##

library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(6,5))
add.constraint(lp.model, c(1,1), "<=", 5)
add.constraint(lp.model, c(3,2), "<=", 12)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)

