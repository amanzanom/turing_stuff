loop
    var key : string (1)
    getch (key)
    put key, " in ASCII corresponds to :", ord (key)
    if ord (key) = (32) then
	exit
    end if
end loop
