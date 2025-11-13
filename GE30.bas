Belt: Cls
Print "---------------------------------------"
Print "-----------   Belt Length   -----------"
Print "---------------------------------------"
Print
Print "1  Calculate Belt Length"
Print "2  Calculate Sheaves' Center Distance"
Print "3  GoTo TOOL KIT"
Print "4  END App"
Print
Print "Enter Calculation number or"
Input "Press Enter to end app";L
If L = 1 GoTo 1
If L = 2 GoTo 2
If L = 3 Then Run "Tool.bas"
If L = 4 Then Cls : End
Cls : End
1 Cls
Print "Calculate Belt Length:"
Print
Input "Enter Sheaves' Center Dist.  ";C
Input "Enter Large Sheave Diameter  ";D1
Input "Enter Small Sheave Diameter  ";D2
Print
BL = 2*C+Pi*(D1+D2)/2+(D1-D2)^2/(4*C)
Print "Belt Length  =                ";Val(Str$(BL,15,2))
Print
Input "Press ENTER for Main Menu";L
GoTo Belt
2 Cls
Print "Calculate Sheaves' Center Distance"
Print
Input "Enter Belt Length            ";BL
Input "Enter Large Sheave Diameter  ";D1
Input "Enter Small Sheave Diameter  ";D2
Print
C = (BL-Pi*(D1+D2)/2+Sqr((BL-Pi*(D1+D2)/2)^2-2*(D1-D2)^2))/4
Print "Sheaves' Center Distance  =   ";Val(Str$(C,15,2))
Print
Input "Press ENTER for Main Menu";L
GoTo Belt