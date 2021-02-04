library(lpSolveAPI)
lp.model = make.lp(0,2)
set.objfn(lp.model, c(300,500))
add.constraint(lp.model, c(1,0), "<=", 4)
add.constraint(lp.model, c(0,2), "<=", 12)
add.constraint(lp.model, c(3,2), "<=", 18)

lp.control(lp.model, sense='max')
print(lp.model)
solve(lp.model)
get.objective(lp.model)
get.variables(lp.model)

#Grafica
plot(0,0, xlim = c(0,10), ylim = c(0,10), xlab = "Unidad P", ylab = "Unidad V", main = "Numero de unidades de P y V")
polygon(c(0,6,0), c(9,0,0), col = "skyblue", density = 30)
abline(h=6, v=4)