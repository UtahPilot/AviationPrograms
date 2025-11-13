MassIner:
Dat: Cls
Print "----------------------------------------"
Print "---  Mass Moment of Inertia & C.G.  ----"
Print "----------------------------------------"
Print : N = N + 1
Print "ITEM NUMBER "; N
Input "Weight     "; Wt
Input "X [CG]     "; X
Input "Y [CG]     "; Y
Input "Z [CG]     "; Z
Input "Iox        "; Iox
Input "Ioy        "; Ioy
Input "Ioz        "; Ioz
Print
SWt = SWt + Wt
SMX = SMX + Wt * X
SWtX2 = SWtX2 + Wt * X^2
SMY = SMY + Wt * Y
SWtY2 = SWtY2 + Wt * Y^2
SMZ = SMZ + Wt * Z
SWtZ2 = SWtZ2 + Wt * Z^2
SIox = SIox + Iox
SIoy = SIoy + Ioy
SIoz = SIoz + Ioz
Print "1  Next Item Data"
Input "2  Initiate calculations"; C
If C = 1 GoTo Dat Else GoTo Calc
Calc:
XCG = SMX / SWt
SMX = SMX * XCG
YCG = SMY / SWt
SMY = SMY * YCG
ZCG = SMZ / SWt
SMZ = SMZ * ZCG
Inax = SIox + SWtY2 + SWtZ2 - SMY - SMZ
Inay = SIoy + SWtX2 + SWtZ2 - SMX - SMZ
Inaz = SIoz + SWtX2 + SWtY2 - SMX - SMY
Cls
Print "----------------------------------------"
Print "===  Mass Moment of Inertia & C.G.  ----"
Print "----------------------------------------"
Print
Print "Weight     "; SWt
Print "X [CG]     "; XCG
Print "Y [CG]     "; YCG
Print "Z [CG]     "; ZCG
Print "Inax       "; Inax
Print "Inay       "; Inay
Print "Inaz       "; Inaz
Print
Print "1  New set of data"
Print "2  GoTo TOOL KIT"
Input "3  END App";U
If U = 1 Then N = 0 : GoTo Dat
If U = 2 Then Run "TOOL.bas"
If U = 3 Then Cls : End
Cls : End