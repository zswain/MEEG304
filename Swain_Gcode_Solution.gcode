%G-Code Assignment

%O1234 (Letter O for formatting, number is job number)

G20 (set units to inches)

T01 (Select Tool 1)  M06 (Tool Change)

S1200 (Set RPM to 1200) M03 (Turn spindle on CW)

(**********BEGIN FIRST PASS OF OUTER PERIMETER**********)

G00 Z1. (G00 rapid tool move to safe height)

G00 X0 Y-0.255 (START AT POINT 1)

G01 Z-0.190 F3. (drop to cut depth, set feed rate to 3 ipm)
(G01-Straight mill move)

G01 y-3.25 (STRAIGHT MOVE TO POINT 2)

G02 X-0.25 Y-3.5 I-0.25 J0. (ARC MOVE TO POINT 3)
(G02-Tell the machine to move in a clockwise arc) 
(I and J refers to center of arc in incremental measurements)
(I=X dimension from Point 2 to Point B, 0 to -0.25 = -0.25)
(J=Y dimension from Point 2 to Point B, -3.25 to -3.25 = 0.)

G01 X-3.25 (STRAIGHT MOVE TO POINT 4)

G02 X-3.5 Y-3.25 I0. J0.25 (ARC MOVE TO POINT 5)
(G02-Tell the machine to move in a clockwise arc) 
(I and J refers to center of arc in incremental measurements)
(I=X dimension from Point 4 to Point C, -3.25 to -3.25 = 0.)
(J=Y dimension from Point 4 to Point C, -3.5 to -3.25 = 0.25)

G01 Y-0.25 (STRAIGHT MOVE TO POINT 6)

G02 x-3.25 y0. I0.25 J0. (ARC MOVE TO POINT 7)
(G02-Tell the machine to move in a clockwise arc) 
(I and J refers to center of arc in incremental measurements)
(I=X dimension from Point 6 to Point D, -3.5 to -3.25 = 0.25)
(J=Y dimension from Point 6 to Point D, -0.25 to -0.25 = 0.)

G01 X-0.25 (STRAIGHT MOVE TO POINT 8)

G02 x0 y-0.25 I0. J-0.25 (ARC MOVE TO POINT 1)
(G02-Tell the machine to move in a clockwise arc) 
(I and J refers to center of arc in incremental measurements)
(I=X dimension from Point 8 to Point A, -0.25 to -0.25 = 0.)
(J=Y dimension from Point 8 to Point A, 0 to -0.25 = -0.25)

G00 Z1. (retract to safe height)

(**********END FIRST PASS OF OUTER PERIMETER**********)

(**********BEGIN SECOND PASS OF OUTER PERIMETER**********)

G00 X0 Y-0.25 (START AT POINT 1)
G01 Z-0.380 F3. (SET CUTTING HEIGHT TO FINAL DEPTH)
G01 Y-3.25 (STRAIGHT MOVE TO POINT 2)
G02 X-0.25 Y-3.5 I-0.25 J0. (ARC MOVE TO POINT 3)
G01 X-3.25 (STRAIGHT MOVE TO POINT 4)
G02 X-3.5 Y-3.25 I0. J0.25 (ARC MOVE TO POINT 5)
G01 Y-0.25 (STRAIGHT MOVE TO POINT 6)
G02 X-3.25 y0. I0.25 J0. (ARC MOVE TO POINT 7)
G01 X-0.25 (STRAIGHT MOVE TO POINT 8)
G02 x0 y-0.25 I0. J-0.25 (ARC MOVE TO POINT 1)
G00 Z1. (retract to safe height)

(**********END SECOND PASS OF OUTER PERIMETER**********)

(**********BEGIN MILLING POCKET**********)
(HINT: G02 mills a CW arc. Use G03 to mill a CCW arc)
(Follow points listed on drawing to move counter clockwise around shape.)

(STUDENTS ENTERS WORK HERE)

G00 X-1.75 Y-2.38
G01 Z-.190 F3.000
G03 X-2.00 Y-2.13 I-.250 J0.000
G01 X-3.00
G03 X-3.25 Y-2.38 I0.000 J-.250
G01 Y-3.13
G03 X-3.00 Y-3.38 I.2500 J0.000
G01 X-2.00
G03 X-1.75 Y-3.13 I0.000 J.2500
G01 Y-2.38

G00 Z1.000

G00 X-1.75 Y-2.38
G01 Z-.190 F3.000
G03 X-2.00 Y-2.13 I-.250 J0.000
G01 X-3.00
G03 X-3.25 Y-2.38 I0.000 J-.250
G01 Y-3.13
G03 X-3.00 Y-3.38 I.2500 J0.000
G01 X-2.00
G03 X-1.75 Y-3.13 I0.000 J.2500
G01 Y-2.38

G00 Z1.000
G00 X0.000 Y0.000

(**********END MILLING POCKET**********)

M05 (Turn off spindle)

M30 (Program END)
