## Problema 1 - Willy Wonka

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

## Problema 2 agricultor

library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(50,120))
add.constraint(lp.model, c(100,200), "<=", 10000)
add.constraint(lp.model, c(10,30), "<=", 1200)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)

## Problema 3 - Khiara Enriquez

library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(3000,5000))
add.constraint(lp.model, c(1,0), "<=", 4)
add.constraint(lp.model, c(0,2), "<=", 12)
add.constraint(lp.model, c(3,2), "<=", 18)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)