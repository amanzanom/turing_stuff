% Program that converts almost decimal to binary
var key : string (1)
var num, c : int
var bin : array 1 .. 100000 of int
loop
    put "Enter number to convert to binary"
    get num
    put "in binary is:" ..
    if num = 0 or num = 1 then
	put num
    else
	c := 1
	loop
	    if num mod 2 = 0 then
		bin (c) := 0
		num := num div 2
		c := c + 1
	    elsif num mod 2 not= 0 then
		bin (c) := 1
		num := (num - 1) div 2
		c := c + 1
	    end if
	    exit when num = 1
	end loop
	put 1 ..
	for decreasing i : c - 1 .. 1
	    put bin (i) ..
	end for
	put ""
    end if
    put "Press any key to continue"
    put "Press space bar to exit"
    getch (key)
    % if space is pressed the program ends else it continues
    if ord (key) = (32) then
	exit
    else
	cls
    end if
end loop
