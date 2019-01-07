var c, font : int
var key : string (1)
var c1:string
font := Font.New ("Verdana:20")

c := 0
loop
    colorback (c)
    cls
    c1 := intstr (c)
    c1:="the current number is "+c1
    Font.Draw (c1 , 5, 5, font, 7)
    getch (key)
    if ord (key) = (203) and c > 1 then
	c := c - 1
    elsif ord (key) = (205) and c < 255 then
	c := c + 1
    elsif ord (key) = (113) then
	exit
    end if
    
end loop
