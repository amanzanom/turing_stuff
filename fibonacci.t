var a, b, f : real
var c, num : int
var key : string (1)
loop
    a := 1
    b := 1
    c := 1
    f := 1
    put "Enter number to convert to Fibonacci"
    get num
    cls
    put "The equivalent of the number ", num, " in fibonacci is:"
    if num = 0 or num = 1 then
	put f
    else
	loop
	    f := a + b
	    a := b
	    b := f
	    c := c + 1
	    exit when c = num
	end loop
	put f
    end if
    put "Press Space bar to continue,"
    put "or press any other key to exit" ..
    getch (key)
    if ord (key) = (32) then
	cls
    else
	exit
    end if
end loop
