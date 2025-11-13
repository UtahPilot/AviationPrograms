Test1: Cls
Print "----------------------------------------"
Print "----------   Dead Reckoning   ----------"
Print "----------------------------------------"
Print
Print "F1  True Course (deg)     "; TC
Print "F2  Magnetic Var. (deg)   "; MV
Print "F3  Distance (nm)         "; Dt
Print
Print "F4  TAS (kts)             "; TAS
Print "F5  Fuel Burn (gal/hr)    "; FB
Print "F6  Wind Direction (deg)  "; WD
Print "F7  Wind Velocity (kts)   "; WV
Print
Print "F8  RUN Dead Reckoning"
Print "F9  GoTo TOOL KIT"
Print "F10  END Dead Reckoning"
Print
Print
Print "Press F# key, then"
Print "enter item value"
Do
    Do
        a$ = Inkey$
    Loop Until a$ <> ""
    Select Case Asc(a$)
        Case 145: Input "True Course (deg)         "; TC: GoTo Test1
        Case 146: Input "Magnetic Var. (deg)       "; MV: GoTo Test1
        Case 147: Input "Distance (nm)             "; Dt: GoTo Test1
        Case 148: Input "TAS (kts)                 "; TAS: GoTo Test1
        Case 149: Input "Fuel Burn (gal/hr)        "; FB: GoTo Test1
        Case 150: Input "Wind Direction (deg)      "; WD: GoTo Test1
        Case 151: Input "Wind Velocity (kts)       "; WV: GoTo Test1
        Case 152: GoTo DR8
        Case 153: Run "TOOL"
        Case 154: Cls : End
        Case Else : GoTo Test1
    End Select
Loop
DR8: Cls
MH1 = TC + MV + Deg(ASin((WV / TAS) * Sin(Rad(TC - WD + 180))))
MH2 = MH1 - MV
If MH1 < 0 Then MH = MH1 + 360 Else If MH1 > 360 Then MH = MH1 - 360 Else MH = MH1
End If
MH = Cint(MH)
GS = Int(TAS * Cos((Rad(TC - MH2))) + WV * Cos((Rad(TC - WD + 180))))
LT1 = Int(Dt / GS) + (Dt / GS - Int(Dt / GS)) * 0.6
LT = Val(Str$(LT1,15,2))
LF = Val(Str$(FB*Dt/GS,15,1))
Print "----------------------------------------"
Print "----------   Dead Reckoning   ----------"
Print "----------------------------------------"
Print
Print "True Course (deg)     "; TC
Print "Magnetic Var. (deg)   "; MV
Print "Distance (nm)         "; Dt
Print
Print "TAS (kts)             "; TAS
Print "Fuel Burn (gal/hr)    "; FB
Print "Wind Direction (deg)  "; WD
Print "Wind Velocity (kts)   "; WV
Print
Print "Magnetic Heading (deg)"; MH
Print "Ground Speed (kts)    "; GS
Print "Leg Time (hh.mm)      "; LT
Print "Leg Fuel (gal)        "; LF
Print
Print
Print "1  Dead Recokoning Menu"
Print "2  GoTo TOOL Kit"
Print "2  END App"
Print
Input "Enter Choice No."; N1
If N1 = 1 Then GoTo Test1: Else
If N1 = 2 Then Cls
End If
End