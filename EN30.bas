Vec: Cls
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "1  Vector Operations"
Print "2  Vectors Addition"
Print "3  Vector Coordinates Convertion"
Print "4  GoTo TOOL KIT"
Print "5  End Program"
Print
Input "Enter Option Number";L
If L = 1 GoTo 1
If L = 2 GoTo 2
If L = 3 GoTo 5
If L = 4 Then Run "TOOL.bas"
If L = 5 Then Cls : End
Cls : End
1 : Cls
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "Vector Operations"
Print
Print "Enter V1 (X,Y,Z) Date:"
Input "     X  ";X1
Input "     Y  ";Y1
Input "     Z  ";Z1
Print
Print "Enter V2 (X,Y,Z,) Data:"
Input "     X  ";X2
Input "     Y  ";Y2
Input "     Z  ";Z2
Cls
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "Vector Operations"
Print
i = X1 + X2
j = Y1 + Y2
k = Z1 + Z2
V1S = Sqr(X1^2 + Y1^2 + Z1^2)
V2S = Sqr(X2^2 + Y2^2 + Z2^2)
Dot = X1*X2 + Y1 *Y2 + Z1*Z2
Crossi = Y1*Z2 - Z1*Y2
Crossj = Z1*X2 - X1*Z3
Crossk = X1*Y2 - Y1*X2
VA = ACos(Dot/(V1S*V2S))*180/Pi
SP = Dot/V1S
VPi = Dot*X2/V2S^2
VPj = Dot*Y2/V2S^2
VPk = Dot*Z2/V2S^2
UV1i = V1S*X1/V1S^2
UV1j = V1S*Y1/V1S^2
UV1k = V1S*Z1/V1S^2
UV2i = V2S*X2/V2S^2
UV2j = V2S*Y2/V2s^2
UV2k = V2S*Z2/V2s^2
Print "              i        j         k"
Print "            -----    -----     -----"
Print "Sum         =";i;"       ";j;"        ";k
Print "|V1|        =";Val(Str$(V1s,15,3))
Print "|V2|        =";Val(Str$(V2S,15,3))
Print "Dot Product =";Val(Str$(Dot,15,3))
Print "Cross Produ = ";Val(Str$(Crossi,15,3));"     ";Val(Str$(Crossj,15,3));"        ";Val(Str$(Crossk,15,3))
Print "Vectors <";Chr$(167);"  =";Val(Str$(VA,15,3))
Print "Scalar Proj =";Val(Str$(SP,15,3))
Print "Vector Proj =";Val(Str$(VPi,15,3));"   ";Val(Str$(VPj,15,3));"    ";Val(Str$(VPk,15,3))
Print "V1 Unit Vec =";Val(Str$(UV1i,15,3));"   ";Val(Str$(UV1j,15,3));"    ";Val(Str$(UV1k,15,3))
Print "V2 Unit Vec =";Val(Str$(UV2i,15,3));"   ";Val(Str$(UV2j,15,3));"    ";Val(Str$(UV2k,15,3))
Print
Input " Press ENTER for Main Menu";L
GoTo Vec
2 : Cls
SX=0:SY=0
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "Vector Addition"
Print
Print "Enter each vector's Magnitude"
Print "and Angle in Degrees:"
Print
Print "Enter 0 for Magnitude when finished"
Print "entering all vectors' data"
Print
3
Input "Magnitude =   ";Mag
If Mag = 0 GoTo 4
Input "Angle (Deg) = ";Ang
SX = SX + Mag*Cos(Rad(Ang))
SY = SY + Mag*Sin(Rad(Ang))
TM = Sqr(SX^2 + SY^2)
RA = Abs(Deg(Atn(SY/SX)))
If (SX>0) And (SY>0) Then RA1 = RA Else RA1 = 0
If (SX<0) And (SY>0) Then RA2 = 180 - RA Else RA2 = 0
If (SX<0) And (SY<0) Then RA3 = 180 + RA Else RA3 = 0
If (SX>0) And (SY<0) Then RA4 = 360 - RA Else RA4 = 0
RA5 = RA1 + RA2 + RA3 + RA4
Print
GoTo 3
4
Print
Print "Total X Magnitude = ";Val(Str$(SX,15,3))
Print "Total Y Magnitude = ";Val(Str$(SY,15,3))
Print "Total Magnitude   = ";Val(Str$(TM,15,3))
Print "Resulting Angle";Chr$(167);"  = ";Val(Str$(RA5,15,3))
Print
Input "Press ENTER for Main Menu";L
GoTo Vec
5 : Cls
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "Vector Coordinates Conversion"
Print
Print "1  From Polar to Cartesian"
Print "2  From Cartesian to Polar"
Print "3  For Main Menu"
Print
Input "Enter Menu choice";L
If L = 1 GoTo 6
If L = 2 GoTo 7
If L = 3 GoTo VEC
6 : Cls
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "Vector Coordinates Conversion"
Print
Print "From Polar to Cartesian"
Print
Input "Radial      = ";R
Input "Angle (Deg) = ";A
X = R*Cos(Rad(A))
Y = R*Sin(Rad(A))
Print
Print "X           = ";Val(Str$(X,15,3))
Print "Y           = ";Val(Str$(Y,15,3)
Print
Input "Press Enter for Conversion Menu";L
GoTo 5
7 : Cls
Print "----------------------------------------"
Print "-------------    Vector    -------------"
Print "----------------------------------------"
Print
Print "Vector Coordinates Conversion"
Print
Print "From Cartesian to Polar"
Print
Input "X           = ";X
Input "Y           = ";Y
R = Sqr(X^2 + Y^2)
D1 = Deg(Atn(Y/X))
If D1<0 Then D1 = D1*(-1)
If (X>0) And (Y>0) Then D2 = D1 Else D2 = 0
If (X<0) And (Y>0) Then D3 = (180-D1) Else D3 = 0
If (X<0) And (Y<0) Then D4 = (180+D1) Else D4 = 0
If (X>0) And (Y<0) Then D5 = (360-D1) Else D5 = 0
D6 = D2 + D3 + D4 + D5
Print
Print "Radial      = ";Val(Str$(R,15,3))
Print "Angle (Deg) = ";Val(Str$(D6,15,3))
Print
Input "Press Enter for Conversion Menu";L
GoTo 5
End