View.Set ("graphics:800;600")
colorback (black)
cls
var x, y : int
var key : string (1)
var a, b : array 1 .. 5 of int
loop
    x := 360
    y := 260
    loop
	drawfillstar (x, y, x + 80, y + 80, 14)
	getch (key)
	if ord (key) = (200) then
	    drawfillstar (x, y, x + 80, y + 80, black)
	    if y >= 510 then
	    else
		y := y + 3
	    end if
	elsif ord (key) = (205) then
	    drawfillstar (x, y, x + 80, y + 80, black)
	    if x >= 710 then
	    else
		x := x + 3
	    end if
	elsif ord (key) = (208) then
	    drawfillstar (x, y, x + 80, y + 80, black)
	    if y <= 10 then
	    else
		y := y - 3
	    end if
	elsif ord (key) = (203) then
	    drawfillstar (x, y, x + 80, y + 80, black)
	    if x <= 10 then
	    else
		x := x - 3
	    end if
	elsif ord (key) = (32) then
	    for i : 1 .. 5
		randint (a (i), x + 10, x + 70)
		randint (b (i), y + 10, y + 70)
	    end for
	    for size : 1 .. 50
		for i : 1 .. 5
		    drawfilloval (a (i), b (i), size, size, black)
		end for
		delay (50)
	    end for
	    exit
	elsif ord (key) = (113) then
	    exit
	else
	end if
    end loop
    if ord (key) = (113) then
	exit
    end if
end loop
