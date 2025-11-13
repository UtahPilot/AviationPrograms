LI: Cls
Print "----------------------------------------"
Print "-------   Linear Interpolation   -------"
Print "----------------------------------------"
Print
Input "Enter Point 1 X ";X1
Input "Enter Point 1 Y ";Y1
Input "Enter Point 2 X ";X2
Input "Enter Point 2 Y ";Y2
5 Print
Print "1  Given X Data"
Print "2  Given Y Data"
Print "3  GoTo TOOL KIT.bas"
Input "4  END App";A
If A = 1 GoTo 10
If A = 2 GoTo 20
If A = 3 Then Run "TOOL.bas"
If A = 4 Then Cls : End
Cls : End
10 Input "X = ";X
Print "Y =  ";((X-X1)*Y2+(X2-X)*Y1)/(X2-X1)
Print
Print "1  Enter other Given Data"
Print "2  Enter new definding Points"
Input "3  END APP";L
If L = 1 GoTo 5
If L = 2 GoTo LI
If L = 3 Then Cls :End
20 Input "Y = ";Y
Print "X =  ";((Y-Y1)*X2+(Y2-Y)*X1)/(Y2-Y1)
Print
Print "1  Enter other Given Data"
Print "2  Enter new definding Points"
Input "3  END APP";L
If L = 1 GoTo 5
If L = 2 GoTo LI
If L = 3 Then Cls :End