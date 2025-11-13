AnalGeo: Cls
Print "---------------------------------------"
Print "--------   Analytic Geometry   --------"
Print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
Print
Print "1 Line - Line Intersection"
Print "2 Line - Circle Intersection"
Print "3 Circle - Circle Intersection"
Print "4 Lines - Circle Tangent Points"
Print "5 Distance from Point to Line"
Print "6 Distance of Two Skewed 3D Lines"
Print "7 Regular Polygon Area"
Print "8 Circle Center & Radius from 3 Points"
Print "9 Circle Points Coordinates"
Print "10 Arc Parameters"
Print "11 Cone Properties"
Print "12 GoTo TOOL KIT"
Print "13 END App"
Print
Input "Enter Case Number";J
If J = 1 Then GoTo 1
If J = 2 Then GoTo 2
If J = 3 Then GoTo 3
If J = 4 Then GoTo 4
If J = 5 Then GoTo 5
If J = 6 Then GoTo 6
If J = 7 Then GoTo 7
If J = 8 Then GoTo 8
If J = 9 Then GoTo 9
If J = 10 Then GoTo 10
If J = 11 Then GoTo 11
If J = 12 Then Run "TOOL.bas"
If J = 13 Then Cls : End
Cls : End
1 : Cls
Print "Line - Line Intersection"
Print
Input "Line 1 Start X ";X1S
Input "Line 1 Start Y ";Y1S
Input "Line 1 End X   ";X1E
Input "Line 1 End Y   ";Y1E
Input "Line 2 Start X ";X2S
Input "Line 2 Start Y ";Y2S
Input "Line 2 End X   ";X2E
Input "Line 2 End Y   ";Y2E
Print
A = (Y1E-Y1S)/(X1E-X1S)
B = Y1S-A*X1S
C = (Y2E-Y2S)/(X2E-X2S)
D = Y2S-C*X2S
E = (B-D)/(C-A)
Print "( X, Y ) Intersection ="
Print "         (";Val(Str$(E,15,3));",";Val(Str$(A*E+B,15,3));" )"
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
2 : Cls
Print "Line - Circle Intersection"
Print
Input "Line Start X    ";XS
Input "Line Start Y    ";YS
Input "Line End X      ";XE
Input "Line End Y      ";YE
Input "Circle Center X ";XC
Input "Circle Center Y ";YC
Input "Circle Radius   ";R
Print
A = (YE-YS)/(XE-XS)
B = YS-A*XS
C = 1+A^2
D = 2*A*(B-YC)-2*XC
E = XC^2+(B-YC)*(B-YC)-R^2
F = (-D+Sqr(D^2-4*C*E))/(2*C)
G = A*F+B
H = (-D-Sqr(D^2-4*C*E))/(2*C)
I = A*H+B
Print "1st Intersection = (";Val(Str$(F,15,3));",";Val(Str$(G,15,3));" )"
Print "2nd Intersection = (";Val(Str$(H,15,3));",";Val(Str$(I,15,3));" )"
Print
Input Input "Press ENTER for Main Menu";J
GoTo AnalGeo
3 : Cls
Print "Circle - Circle Intersection"
Print
Input "1st Circle Center X ";XC1
Input "1st Circle Center Y ";YC1
Input "1st Circle Radius   ";R1
Input "2nd Circle Center X ";XC2
Input "2nd Circle Center Y ";YC2
Input "2nd Circle Radius   ";R2
Print
A = XC2^2-XC1^2-R2^2-(YC2-YC1)^2+R1^2
B = (2*XC1-2*XC2)^2+4*(YC2-YC1)^2
C = 2*A*(2*XC1-2*XC2)-8*XC2*(YC2-YC1)^2
D = 4*XC2^2*(YC2-YC1)^2+A^2-4*(YC2-YC1)^2*R2^2
E = (-C+Sqr(C^2-4*B*D))/(2*B)
F = (-C-Sqr(C^2-4*B*D))/(2*B)
G = Sqr(R1^2-(E-XC1)^2)+YC1
H = -Sqr(R1^2-(E-XC1)^2)+YC1
I = Sqr(R1^2-(F-XC1)^2)+YC1
K = -Sqr(R1^2-(F-XC1)^2)+YC1
L = (E-XC2)^2+(G-YC2)^2-R2^2
M = (E-XC2)^2+(H-YC2)^2-R2^2
N = (F-XC2)^2+(I-YC2)^2-R2^2
O = (F-XC2)^2+(K-YC2)^2-R2^2
If Abs(M)<Abs(L) Then P=H Else P=G
If Abs(O)<Abs(N) Then
Q=G
ElseIf (YC1=YC2) Then
Q=2*YC1-P
Else
Q=I
EndIf
Print "1st Intersection = (";Val(Str$(E,15,3));",";Val(Str$(P,15,3));" )"
Print "2nd Intersection = (";Val(Str$(F,15,3));",";Val(Str$(Q,15,3));" )"
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
4 : Cls
Print "Lines - Circle Tangent Points"
Print
Input "Line Start Point X ";XL
Input "Line Start Point Y ";YL
Input "Circle Center X    ";XC
Input "Circle Center Y    ";YC
Input "Circle Radius      ";R
Print
If XL>XC Then A=Atn((YL-YC)/(XL-XC)) Else A=Atn((YL-YC)/(XL-XC))-Pi
B = ACos(R/Sqr((XL-XC)^2+(YL-YC)^2))
C = XC+R*Cos(A+B)
D = YC+R*Sin(A+B)
E = XC+R*Cos(A-B)
F = YC+R*Sin(A-B)
Print "Tangent Point 1 =  (";Val(Str$(C,15,3));",";Val(Str$(D,15,3));" )"
Print "Tangent Point 2 =  (";Val(Str$(E,15,3));",";Val(Str$(F,15,3));" )"
Print
Input "Press ENTER for Main Nenu";J
GoTo AnalGeo
5 : Cls
Print "Distance from Point to Line"
Print
Input "Line Start X    ";LSX
Input "Line Start Y    ";LSY
Input "Line End X      ";LEX
Input "Line End Y      ";LEY
Input "Point X         ";PX
Input "Point Y         ";PY
Print
A = (LEX-LSX)^2+(LEY-LSY)^2
B = (PX-LEX)^2+(PY-LEY)^2
C = (PX-LSX)^2+(PY-LSY)^2
E = (C-A-B)/(2*Sqr(A))
D = Sqr(B-E^2)
Print "Point to Line Distance = ";Val(Str$(D,15,3))
Print "End of Line to  "Chr$(193);"      = ";Val(Str$(E,15,3))
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
6 : Cls
Print "Distance Between 2 Skewed 3D Lines"
Print
Input "Line 1 Point 1 X    ";L1P1X
Input "Line 1 Point 1 Y    ";L1P1Y
Input "Line 1 Point 1 Z    ";L1P1Z
Input "Line 1 Point 2 X    ";L1P2X
Input "Line 1 Point 2 Y    ";L1P2Y
Input "Line 1 Point 2 Z    ";L1P2Z
Input "Line 2 Point 1 X    ";L2P1X
Input "Line 2 Point 1 Y    ";L2P1Y
Input "Line 2 Point 1 Z    ";L2P1Z
Input "Line 2 Point 2 X    ";L2P2X
Input "Line 2 Point 2 Y    ";L2P2Y
Input "Line 2 Point 2 Z    ";L2P2Z
Print
A1 = L1P2X-L1P1X
B1 = L1P2Y-L1P1Y
C1 = L1P2Z-L1P1Z
A2 = L2P2X-L2P1X
B2 = L2P2Y-L2P1Y
C2 = L2P2Z-L2P1Z
A3 = B1*C2-B2*C1
B3 = A2*C1-A1*C2
C3 = A1*B2-A2*B1
A4 = Sqr(A3^2+B3^2+C3^2)
A5 = L2P1X-L1P1X
B5 = L2P1Y-L1P1Y
C5 = L2P1Z-L1P1Z
DIS = (A5*A3+B5*B3+C5*C3)/A4
Print "Distance =           ";Val(Str$(DIS,15,3))
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
7 : Cls
Print "Regular Polygon Area"
Print
Input "No. of Sides         ";S
P = Pi/S
Print
Input "Length of Flat       ";F
A1 = S*F^2*(1/Tan(P))/4
Print "Area =                ";Val(Str$(A1,15,3))
Print
Input "Circumscribed Radius ";CR
A2 = S*CR^2*Sin(P*2)/2
Print "Area =                ";Val(Str$(A2,15,3))
Print
Input "Inscribed Radius     ";IR
A3 = S*IR^2*Tan(P)
Print "Area =                ";Val(Str$(A3,15,3))
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
8 : Cls
Print "Circle Center & Radius from 3 Points"
Print
Input "1st Point X           ";X1
Input "1st Point Y           ";Y1
Input "2nd Point X           ";X2
Input "2nd Point Y           ";Y2
Input "3rd Point X           ";X3
Input "3rd Point Y           ";Y3
Print
A = (Y2-Y1)/(X2-X1)
B = (Y3-Y1)/(X3-X1)
C = (X2-X1)*(X2+X1)+(Y2-Y1)*(Y2+Y1)
D = C/(2*(X2-X1))
E = (X3-X1)*(X3+X1)+(Y3-Y1)*(Y3+Y1)
F = E/(2*(X3-X1))
YCC = (F-D)/(B-A)
XCC = F-B*YCC
R = Sqr((X3-XCC)^2+(Y3-YCC)^2)
Print "Circle Center =       (";Val(Str$(XCC,15,3));",";Val(Str$(YCC,15,3));" )"
Print "Circle Radius =        ";Val(Str$(R,15,3))
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
9 : Cls
Print "Circle Points Coordinates"
Print
Input "Number of Points    ";N
Input "Circle Center X     ";XC
Input "Circle Center Y     ";YC
Input "Circle Radius       ";R
Input "1st Point Angle     ";A
B = 360/N
X = XC+R*Cos(Rad(A))
Y = YC+R*Sin(Rad(A))
Cls
Print "Circle Points Coordinates"
Print "Point #","  X","  Y"," Angle"
Print "  1",Val(Str$(X,15,2)),Val(Str$(Y,15,2)),Val(Str$(A,15,2))
For I = 2 To N
A = A+B
If A > 360 Then A=A-360
X = XC+R*Cos(Rad(A))
Y = YC+R*Sin(Rad(A))
Print " ";I,Val(Str$(X,15,2)),Val(Str$(Y,15,2)),Val(Str$(A,15,2))
Next I
Print
Input "Press ENTER for Main Menu";J
GoTo AnalGeo
10 : Cls
Print "Circle Arc Parameters"
Print
Print "Given Cases:"
Print "1  Radius / Chord Length"
Print "2  Radius / Chord Depth (H)"
Print "3  Radius / Central Angle (Theta)"
Print "4  Radius / Arc Length (S)"
Print "5  Chord Length / Chord Depth (H)"
Print "6  Chord Length / Central Angle (Theta)"
Print "7  Chord Depth (H) / Cent Angle (Theta)"
Print "8  Central Ang (Theta) / Arc Length (S)"
Print
Input "Enter Case Number or 9 to End";J
If J = 1 GoTo ABC
If J = 2 GoTo ABD
If J = 3 GoTo ABE
If J = 4 GoTo ABF
If J = 5 GoTo ABG
If J = 6 GoTo ABH
If J = 7 GoTo ABI
If J = 8 GoTo ABJ
If J = 9 Then Cls : End
ABC: Cls
Print "Circle Arc Parameters"
Print
Input "Radius         ";R
Input "Chord Length   ";L
H = (2*R-Sqr(4*R^2-L^2))/2
T = Atn((L/2)/Sqr(R^2-L^2/4))*360/Pi
S = R*Rad(T)
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABD: Cls
Print "Circle Arc Parameters"
Print
Input "Radius         ";R
Input "Chord Depth    ";H
L = Sqr(8*R*H-4*H^2)
T = Deg(Atn((L/2)/Sqr(R^2-L^2/4))*2)
S = R*Rad(T)
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABE: Cls
Print "Circle Arc Parameters"
Print
Input "Radius         ";R
Input "Central Angle  ";T
L = 2*R*Sin(Rad(T/2))
H = (2*R-Sqr(4*R^2-L^2))/2
S = R*Rad(T)
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABF: Cls
Print "Circle Arc Parameters"
Print
Input "Radius         ";R
Input "Arc Length     ";S
T = S*180/(R*Pi)
L = 2*R*Sin(Rad(T/2))
H = (2*R-Sqr(4*R^2-L^2))/2
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABG: Cls
Print "Circle Arc Parameters"
Print
Input "Chord Length   ";L
Input "Chord Depth    ";H
R = H/2+L^2/(8*H)
T = Deg(Atn((L/2)/Sqr(R^2-L^2/4)))*2
S = R*Rad(T)
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABH: Cls
Print "Circle Arc Parameters"
Print
Input "Chord Length   ";L
Input "Central Angle  ";T
R = L/(2*Sin(Rad(T/2)))
H = (2*R-Sqr(4*R^2-L^2))/2
S = R*Rad(T)
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABI: Cls
Print "Circle Arc Parameters"
Print
Input "Chord Depth    ";H
Input "Central Angle  ";T
L = 2*H/Tan(Rad(T/4))
R = H/2+L^2/(8*H)
S = R*Rad(T)
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
GoTo PAR
ABJ: Cls
Print "Circle Arc Parameters"
Print
Input "Central Angle  ";T
Input "Arc Length     ";S
R = S/Rad(T)
L = 2*R*Sin(Rad(T/2))
H = (2*R-Sqr(4*R^2-L^2))/2
AC = S*R/2-L*R*Cos(Rad(T)/2)/2
PA = S*R/2
PAR: Cls
Print "Circle Arc Parameners"
Print
Print "Radius (R)             ";Val(Str$(R,15,3))
Print "Chord Length (L)       ";Val(Str$(L,15,3))
Print "Chord Depth (H)        ";Val(Str$(H,15,3))
Print "Centeal Angle (Theta)  ";Val(Str$(T,15,3))
Print "Arc Length (S)         ";Val(Str$(S,15,3))
Print "Area between C & S     ";Val(Str$(AC,15,3))
Print Chr$(228);" Pie Shape Area       ";Val(Str$(PA,15,3))
Print
Print "1  ARC Menu"
Input "2  Main Menu";J
If J = 1 GoTo ARC
If J = 2 GoTo AnalGeo
GoTo AnalGeo
11 : Cls
Print "Cone Properties"
Print
Print "1  Given Diameter & Height"
Print "2  Given Flat Pattern Radius"
Input "      & F.P. Cut-Out Angle  ";J
If J = 1 GoTo ABK
If J = 2 GoTo ABL
ABK: Cls
Print "Cone Properties"
Print
Input "Cone Diameter     ";D
Input "Cone Height       ";H
C = Pi*D
Print "Cone Circumference ";Val(Str$(C,15,2))
L = Sqr((D/2)^2+H^2)
Print "Cone Side Length   ";Val(Str$(L,15,2))
BA = Pi*D^2/4
Print "Base Area          ";Val(Str$(BA,15,2))
CoA = 360*(L*2*Pi-C)/(L*2*Pi)
SA = L^2*Pi*(360-CoA)/360
Print "Side Area          ";Val(Str$(SA,15,2))
TA = BA+SA
Print "Total Area         ";Val(Str$(TA,15,2))
CV = BA*H/3
Print "Cone Volume        ";Val(Str$(CV,15,2))
Print "Flat Pattern Radius";Val(Str$(L,15,2))
Print "F.P. Cut-Out Angle ";Val(Str$(CoA,15,2))
Print
Print "1  Cone Menu"
Input "2  Main Menu";J
If J = 1 GoTo 11
If J = 2 GoTo AnalGeo
GoTo AnalGeo
ABL: Cls
Print "Cone Properties"
Print
Input "Flat Pattern Radius  ";R
Input "F.P. Cut-Out Angle   ";CoA
D = (360-CoA)*R/180
H = Sqr(R^2-D^2/4)
C = Pi*D
BA = Pi*D^2/4
SA = R^2*Pi*(360-CoA)/360
TA = BA+SA
CV = BA*H/3
Print "Cone Diameter         ";Val(Str$(D,15,2))
Print "Cone Height           ";Val(Str$(H,15,2))
Print "Cone CirCumference    ";Val(Str$(C,15,2))
Print "Cone Side Length      ";Val(Str$(R,15,2))
Print "Base Area             ";Val(Str$(BA,15,2))
Print "Side Area             ";Val(Str$(SA,15,2))
Print "Total Area            ";Val(Str$(TA,15,2))
Print "Cone Volume           ";Val(Str$(CV,15,2))
Print
Print "1  Cone Menu"
Input "2  Main Menu";J
If J = 1 GoTo 11
If J = 2 GoTo AnalGeo
GoTo AnalGeo