View.Set ("graphics:800;600")
var c, back, x, y, turn, flag, x1, y1, position, l, c2 : int
var key : string (1)
flag := 1
x1 := 280
y1 := 380
var k : int
var xp, yp : array 1 .. 8 of int

%procedure to create walls
procedure walls
    xp (1) := 0
    xp (2) := 500
    xp (3) := 800
    xp (4) := 800
    xp (5) := 0
    yp (1) := 1
    yp (2) := 301
    yp (3) := 301
    yp (4) := 600
    yp (5) := 600
    drawfillpolygon (xp, yp, 5, back)
end walls

%Procedure to create backlights of disco
procedure backlights
    for i : 1 .. 50
	randint (x, 20, 780)
	randint (y, 20, 580)
	loop
	    randint (c, 0, 14)
	    if c not= back then
		exit
	    end if
	end loop
	drawfilloval (x, y, 10, 10, c)
    end for
end backlights

procedure light_floor
    %draw pseudo-random lights
    for j : 0 .. 10
	randint (c, 0, 5)
	randint (l, 0, 5)
	xp (1) := 0 + (c * 85) + (l * 150) - (c * 2)
	xp (2) := 85 + (c * 85) + (l * 150) - (c * 2)
	xp (3) := 235 + (c * 85) + (l * 150) - (c * 2)
	xp (4) := 150 + (c * 85) + (l * 150) - (c * 2)
	yp (1) := 0 + (c * 50)
	yp (2) := 50 + (c * 50)
	yp (3) := 50 + (c * 50)
	yp (4) := 0 + (c * 50)
	loop
	    randint (c, 1, 14)
	    if c not= 7 then
		exit
	    end if
	end loop
	drawfillpolygon (xp, yp, 4, c)
    end for
    for i : 0 .. 5
	drawline (0 + (i * 150), 0, 500 + (i * 150), 300, 7)
	drawline (500 - (i * 72) - (i * 11), 300 - (i * 50), 800, 300 - (i * 50), 7)
    end for
    drawline (500, 300, 500, 600, 7)
end light_floor

%procedure to make disco ball
procedure discoball
    drawoval (400, 570, 80, 80, 7)
    drawfilloval (400, 570, 80, 80, 0)
    for : 1 .. 15
	randint (c, 390, 480)
	randint (c2, 490, 650)
	drawfillarc (c, c2, 6, 6, 270, 90, 30)
	randint (c, 320, 360)
	randint (c2, 490, 650)
	drawfillarc (c, c2, 6, 6, 90, 270, 30)
    end for
    for decreasing i : 80 .. -80 by 20
	drawarc (400, 570, 80, i, 90, 270, 7)
    end for
    if flag = 1 then
	for decreasing i : 80 .. 0 by 20
	    drawarc (400, 570, i, 80, 270, 90, 7)
	    drawarc (400, 570, i, 80, 90, 270, 7)
	end for
    elsif flag = 2 then
	for decreasing i : 65 .. 0 by 20
	    drawarc (400, 570, i, 80, 270, 90, 7)
	end for
	for decreasing i : 75 .. 0 by 20
	    drawarc (400, 570, i, 80, 90, 270, 7)
	end for
    elsif flag = 3 then
	for decreasing i : 70 .. 0 by 20
	    drawarc (400, 570, i, 80, 270, 90, 7)
	    drawarc (400, 570, i, 80, 90, 270, 7)
	end for
    end if
    flag := flag + 1
    if flag = 4 then
	flag := 1
    end if
end discoball

procedure draw_body
    %draw clothes
    for i : -1 .. 1 by 2
	%draw pants
	xp (1) := x1
	xp (2) := x1 + (20 * i)
	xp (3) := x1 + (20 * i)
	xp (4) := x1 + (30 * i)
	xp (5) := x1 + (55 * i)
	xp (6) := x1 + (5 * i)
	xp (7) := x1 + (10 * i)
	xp (8) := x1
	yp (1) := 188
	yp (2) := 188
	yp (3) := 180
	yp (4) := 180
	yp (5) := 30
	yp (6) := 30
	yp (7) := 70
	yp (8) := 167
	drawfillpolygon (xp, yp, 8, 112)
	drawpolygon (xp, yp, 8, 7)
	%draw shirt
	xp (1) := x1 + (15 * i)
	xp (2) := x1 + (30 * i)
	xp (3) := x1 + (20 * i)
	xp (4) := x1 + (20 * i)
	xp (5) := x1
	xp (6) := x1
	yp (1) := 290
	yp (2) := 280
	yp (3) := 250
	yp (4) := 188
	yp (5) := 188
	yp (6) := 230
	drawfillpolygon (xp, yp, 6, 0)
	drawpolygon (xp, yp, 6, 7)
	drawline (x1, 230, x1 + (25 * i), 285, 7)
	%draw jacket
	xp (1) := x1 + (30 * i)
	xp (2) := x1 + (20 * i)
	xp (3) := x1 + (20 * i)
	xp (4) := x1 + (35 * i)
	xp (5) := x1 + (35 * i)
	yp (1) := 280
	yp (2) := 250
	yp (3) := 180
	yp (4) := 180
	yp (5) := 276
	drawfillpolygon (xp, yp, 5, 112)
	drawpolygon (xp, yp, 5, 7)
	%draw shoes
	drawfillarc (x1 + (30 * i), 10, 20, 40, 0, 180, 7)
    end for
    %draws buttons on shirt
    drawline (x1 - 4, 238, x1 - 4, 188, 7)
    for i : 188 .. 230 by 10
	drawdot (x1 - 2, i, 7)
    end for
    %draw belt
    Draw.ThickLine (x1 - 20, 186, x1 + 20, 186, 6, 7)
    drawfillstar (x1 - 15, 171, x1 + 15, 201, 14)
    drawstar (x1 - 15, 171, x1 + 15, 201, 7)
end draw_body

procedure draw_head
    var c : int
    var x2 : int := x1
    loop
	randint (c, 0, 2)
	if c = 0 then
	    x2 := x2 + 5
	    exit
	elsif c = 1 then
	    x2 := x2 - 5
	    exit
	else
	    exit
	end if
	y1 := 380
    end loop
    %draw hair
    for i : -1 .. 1
	drawfilloval (x2, 450, 35, 35, 7)
	drawfilloval (x2 + (17 * i), 445, 35, 35, 7)
	drawfilloval (x2 + (38 * i), 430, 35, 35, 7)
	drawfilloval (x2 + (55 * i), 410, 35, 35, 7)
	drawfilloval (x2 + (60 * i), 390, 35, 35, 7)
	drawfilloval (x2 + (55 * i), 370, 35, 35, 7)
	drawfilloval (x2 + (38 * i), 350, 35, 35, 7)
	drawfilloval (x2 + (17 * i), 330, 35, 35, 7)
    end for
    %draw neck
    xp (1) := x1 - 11
    xp (2) := x1 - 11
    xp (3) := x1 - 15
    xp (4) := x1
    xp (5) := x1 + 15
    xp (6) := x1 + 11
    xp (7) := x1 + 11
    yp (1) := 340
    yp (2) := 318
    yp (3) := 290
    yp (4) := 230
    yp (5) := 290
    yp (6) := 318
    yp (7) := 340
    drawfillpolygon (xp, yp, 7, 90)
    drawpolygon (xp, yp, 7, 7)
    %draw head
    drawfilloval (x2, y1, 50, 50, 90)
    drawoval (x2, y1, 50, 50, 7)
    %draw lenses
    drawfillstar (x2 + 37, 377, x2 + 6, 405, 7)
    drawstar (x2 + 38, 376, x2 + 5, 406, 14)
    drawstar (x2 + 39, 375, x2 + 4, 407, 7)
    drawfillstar (x2 - 37, 377, x2 - 6, 405, 7)
    drawstar (x2 - 38, 376, x2 - 5, 406, 14)
    drawstar (x2 - 39, 375, x2 - 4, 407, 7)
    for i : -1 .. 1
	drawline (x2 - 20, 390 + i, x2 + 20, 390 + i, 7)
	drawline (x2 - 33, 390 + i, x2 - 46, 400 + i, 7)
	drawline (x2 + 33, 390 + i, x2 + 46, 400 + i, 7)
	%Draw part beard
	drawarc (x2, y1 - 30, 10 + i, 4, 0, 180, 7)
	drawarc (x2, y1 - 40, 10 + i, 7, 180, 360, 7)
    end for
    Draw.ThickLine (x2 - 10, 340, x2 - 10, 350, 3, 7)
    Draw.ThickLine (x2 + 10, 340, x2 + 10, 350, 3, 7)
    Draw.ThickLine (x2, y1 - 47, x2, y1 - 40, 3, 7)
    %Draw mouth
    Draw.ThickLine (x2 - 5, y1 - 35, x2 + 5, y1 - 35, 2, 7)
    %draw medallion
    Draw.ThickLine (x1 - 11, 318, x1, 275, 2, 7)
    Draw.ThickLine (x1 + 11, 318, x1, 275, 2, 7)
    Draw.Oval (x1, 260, 15, 15, 7)
    Draw.Oval (x1, 260, 9, 9, 7)
    for i : 0 .. 4
	Draw.Oval (x1, 260, 10 + i, 10 + i, 14)
    end for
    Draw.ThickLine (x1, 272, x1, 248, 3, 14)
    drawline (x1 - 2, 269, x1 - 2, 251, 7)
    drawline (x1 + 2, 269, x1 + 2, 251, 7)
    for i : -1 .. 1 by 2
	Draw.ThickLine (x1, 260, x1 + (6 * i), 254, 3, 14)
	drawline (x1 + (2 * i), 260, x1 + (5 * i), 255, 7)
	drawline (x1 + (2 * i), 256, x1 + (5 * i), 251, 7)
    end for
end draw_head

procedure draw_shirt_neck
    %draw shirt neck right
    xp (1) := x1 + (11)
    xp (2) := x1 + (15)
    xp (3) := x1 + (45)
    xp (4) := x1 + (15)
    xp (5) := x1 + (11)
    yp (1) := 320
    yp (2) := 320
    yp (3) := 270
    yp (4) := 290
    yp (5) := 318
    drawfillpolygon (xp, yp, 5, 0)
    drawpolygon (xp, yp, 5, 7)
    %draw shirt neck left
    xp (1) := x1 - (11)
    xp (2) := x1 - (15)
    xp (3) := x1 - (45)
    xp (4) := x1 - (15)
    xp (5) := x1 - (11)
    yp (1) := 320
    yp (2) := 320
    yp (3) := 270
    yp (4) := 290
    yp (5) := 318
    drawfillpolygon (xp, yp, 5, 0)
    drawpolygon (xp, yp, 5, 7)
end draw_shirt_neck

procedure draw_arms (var i : int)
    randint (position, 0, 3)
    if position = 0 then
	%draw right hand straight
	xp (1) := x1 + (35 * i)
	xp (2) := x1 + (135 * i)
	xp (3) := x1 + (155 * i)
	xp (4) := x1 + (155 * i)
	xp (5) := x1 + (135 * i)
	xp (6) := x1 + (35 * i)
	yp (1) := y1 - 100
	yp (2) := y1 - 100
	yp (3) := y1 - 95
	yp (4) := y1 - 125
	yp (5) := y1 - 120
	yp (6) := y1 - 120
	drawfillpolygon (xp, yp, 6, 0)
	drawpolygon (xp, yp, 6, 7)
    elsif position = 1 then
	%draw right hand down
	xp (1) := x1 + (35 * i)
	xp (2) := x1 + (120 * i)
	xp (3) := x1 + (140 * i)
	xp (4) := x1 + (120 * i)
	xp (5) := x1 + (110 * i)
	xp (6) := x1 + (35 * i)
	yp (1) := y1 - 100
	yp (2) := y1 - 150
	yp (3) := y1 - 155
	yp (4) := y1 - 185
	yp (5) := y1 - 170
	yp (6) := y1 - 120
	drawfillpolygon (xp, yp, 6, 0)
	drawpolygon (xp, yp, 6, 7)
    elsif position = 2 then
	%draw right hand up
	xp (1) := x1 + (35 * i)
	xp (2) := x1 + (110 * i)
	xp (3) := x1 + (120 * i)
	xp (4) := x1 + (140 * i)
	xp (5) := x1 + (120 * i)
	xp (6) := x1 + (35 * i)
	yp (1) := y1 - 100
	yp (2) := y1 - 30
	yp (3) := y1 - 15
	yp (4) := y1 - 45
	yp (5) := y1 - 50
	yp (6) := y1 - 120
	drawfillpolygon (xp, yp, 6, 0)
	drawpolygon (xp, yp, 6, 7)
    elsif position = 3 then
	%draw right hand down crossed
	xp (1) := x1 + (35 * i)
	xp (2) := x1 + (-70 * i)
	xp (3) := x1 + (-90 * i)
	xp (4) := x1 + (-70 * i)
	xp (5) := x1 + (-60 * i)
	xp (6) := x1 + (35 * i)
	yp (1) := y1 - 100
	yp (2) := y1 - 150
	yp (3) := y1 - 155
	yp (4) := y1 - 185
	yp (5) := y1 - 170
	yp (6) := y1 - 120
	drawfillpolygon (xp, yp, 6, 0)
	drawpolygon (xp, yp, 6, 7)
    end if
end draw_arms

%main program
% Music.PlayFileReturn ("D:/musica/Kool & The Gang - Celebration.mp3")
loop
    loop
	randint (k, 0, 1)
	if k = 1 and x1 < 660 then
	    x1 := x1 + 20
	    exit
	elsif k = 0 and x1 > 140 then
	    x1 := x1 - 20
	end if
	y1 := 380
    end loop
    var sides : int
    loop
	randint (back, 1, 14)
	exit when back not= 7
    end loop
    cls
    walls
    backlights
    light_floor
    discoball
    draw_body
    draw_head
    sides := 1
    draw_arms (sides)
    sides := -1
    draw_arms (sides)
    draw_shirt_neck
    delay (500)
    exit when hasch
end loop
Music.PlayFileStop
