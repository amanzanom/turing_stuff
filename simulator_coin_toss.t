var cara, sol : real
var resultado : int
var key : string (1)
var cara_o_sol : string
sol := 0
cara := 0
loop
    randint (resultado, 0, 1)
    if resultado = 0 then
	cara := cara + 1
	cara_o_sol := "heads, "
    else
	sol := sol + 1
	cara_o_sol := "tails, "
    end if
    put "No. of flips= ", cara + sol
    put "No. heads= ", cara, ",No. tails= ", sol
    put "Porcentage de heads= ", (cara / (cara + sol)) * 100, "%"
    put "Porcentaga de tails= ", (sol / (cara + sol)) * 100, "%"
    put ""
    getch (key)
    if ord (key) = (113) then
	exit
    end if
end loop

