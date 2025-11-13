Area:
A = 1
Cls
Print "----------------------------------------"
Print "-------   Area/C.G./Perimeter   --------"
Print "----------------------------------------"
Print "Move Clock-Wise around perimeter"
Print
Print "Point    X       Y"
Print
Print
Print "Point 1"
Input "X"; X1: X3 = X1
Input "Y"; Y1: Y3 = Y1
10 Cls
Print "----------------------------------------"
Print "-------   Area/C.G./Perimeter   --------"
Print "----------------------------------------"
Print "Move Clock-Wise around perimeter"
Print
Print "Point    X       Y"
Print " "; A, X1, Y1
Print
A = A + 1
Print "Point" A
Input "X"; X2
Input "Y"; Y2
Cls
Print "----------------------------------------"
Print "-------   Area/C.G./Perimeter   --------"
Print "----------------------------------------"
Print "Move Clock-Wise around perimeter"
Print
Print "Point    X       Y"
Print " "; A, X1, Y1
Print
E1 = 0.5 * (X2 * Y1 - X1 * Y2): E2 = E2 + E1
F1 = E1 * (X1 + X2) / 3: F2 = F2 + F1
G1 = E1 * (Y1 + Y2) / 3: G2 = G2 + G1
H1 = Sqr((X1 - X2) ^ 2 + (Y1 - Y2) ^ 2): H2 = H2 + H1
X1 = X2
Y1 = Y2
If X2 = X3 And Y2 = Y3 Then GoTo 20
GoTo 10
20 Cls
Print "----------------------------------------"
Print "-------   Area/C.G./Perimeter   --------"
Print "----------------------------------------"
Print
Print "Number of Points = "; A - 1
Print "Area =             "; Val(Str$(E2,15,2))
Print "X Bar =            "; Val(Str$(F2/E2,15,2))
Print "Y Bar =            "; Val(Str$(G2/E2,15,2))
Print "Perimeter =        "; Val(Str$(H2,15,2))
Print
Print "Enter 1 for New Data"
Print "Enter 2 GoTo TOOL KIT"
Input "Enter 3 To END";L
If L = 1 GoTo Area
If L = 2 Then Run "TOOL.bas"
If L = 3 Then Cls : End
Cls : End