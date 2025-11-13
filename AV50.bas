Sun: Cls
Print "----------------------------------------"
Print "---   Sun Rise/Set (Mountain Time)   ---"
Print "----------------------------------------"
Print
Input "Day         ";D
Input "Month       ";M
Input "Latitude    ";La
Input "Longitude   ";Lo
Print
A1 = 0.988*(D+30.3*(M-1))
A2 = 23.5*Cos(Rad(A1+10))
A3 = 0.123*Cos(Rad(A1+87))-Sin(Rad(A1+10)/0.5)/6
A4 = 12-A3+(Lo-ACos((Tan(Rad(A2)))*(Tan(Rad(La))))*180/Pi)/15
A5 = 12-A3+(Lo+ACos((Tan(Rad(A2)))*(Tan(Rad(La))))*180/Pi)/15
A6 = A4-7
A7 = A5-19
A8 = A4-6
A9 = A5-18
Print "Sunrise (Standard Time )";Int(A6);":";Str$(Cint((A6-Int(A6))*60))
Print "Sunset (Standard Time)  ";Int(A7);":";Str$(Cint((A7-Int(A7))*60))
Print "Sunrise (DLS Time)      ";Int(A8);":";Str$(Cint((A8-Int(A8))*60))
Print "Sunset (DLS Time)       ";Int(A9);":";Str$(Cint((A9-Int(A9))*60))
Print
Print "1  Different Data Input"
Print "2  GoTo TOOL KIT"
Input "3  END App";J
If J = 1 GoTo Sun
If J = 2 Then Run "TOOL"
If J = 3 Then Cls : End
Cls : End