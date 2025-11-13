Cable: Cls
Print "----------------------------------------"
Print "----------   Catenary Cable   ----------"
Print "----------------------------------------"
Print
Color rgb(Yellow)
Input "Horizontal Distance (ft)  "; HD
Input "Vertical Distance (ft)    "; VD
Input "Cable Weight (lbs/ft)     "; W
Color rgb(White)
Print
Print
H = HD/2
E1 = ((Exp(H/H)+Exp(-H/H))/2-((VD+H)/H))*H
F1 = H + E1
10 E2 = ((Exp(H/F1)+Exp(-H/F1))/2-((VD+F1)/F1))*F1
F2 = F1 + E2
If E2 < 0.0001 Then GoTo 20
End If
F1 = F2
GoTo 10
20 CL = Val(Str$(((Exp(h/F2)-Exp(-H/F2))/2)*F2*2,15,2))
T = Val(Str$((VD+F2)*W,15,2))
Cls
Print "----------------------------------------"
Print "----------   Catenary Cable   ----------"
Print "----------------------------------------"
Print
Color rgb(Yellow)
Print "Horizontal Distance (ft)  "; HD
Print "Vertical Distance (ft)    "; VD
Print "Cable Weight (lbs/ft)     "; W
Print
Color rgb(Green)
Print "Cable Length (ft)         "; CL
Print "Cable Tension (lbs)       "; T
Print
Print
Color rgb(White)
Print "1  Different Data"
Print "2  GoTo TOOL KIT"
Input "3  END App"; A
If A = 1 Then GoTo Cable
If A = 2 Then Run "TOOL.bas"
If A = 3 Then Cls : End
Cls : End