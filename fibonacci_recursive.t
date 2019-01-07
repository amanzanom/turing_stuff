var num : int
var key : string (1)
function fib (n:int):
    if n = 0 then
	result 0
    elsif n = 1 then
	result 1
    else
	result (fib (n - 1) + fib (n + 2))
    end if
end fib

loop
    put "Enter number to convert to Fibonacci"
    get num
    cls
    put "The equivalent of the number ", num, " in fibonacci is:"
    put fib (num)
    put "Press Space bar to continue,"
    put "or press any other key to exit" ..
    getch (key)
    if ord (key) = (32) then
	cls
    else
	exit
    end if
end loop
