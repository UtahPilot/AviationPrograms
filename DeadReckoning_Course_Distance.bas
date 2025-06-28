Test1: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>   Dead Reckoning   ^^^"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "__________________________"
Print "F1  True Coarse (deg)     "; TC
Print "F2  Magnetic Var. (deg)   "; MV
Print "F3  Distance (nm)         "; Dt
Print "--------------------------"
Print "F4  TAS (kts)             "; TAS
Print "F5  Fuel Burn (gal/hr)    "; FB
Print "F6  Wind Direction (deg)  "; WD
Print "F7  Wind Velocity (kts)   "; WV
Print "--------------------------"
Print "F8  RUN Dead Reconing     "
Print "F9  END Dead Reconing     "
Print "--------------------------"
Print
Print "Press F# key, then"
Print "enter item value  "
Do
Do
a$=Inkey$
Loop Until a$<>""
Select Case Asc(a$)
Case 145:Input "True Coarse (deg)         ";TC:GoTo Test1
Case 146:Input "Magnetic Var. (deg)       ";MV:GoTo Test1
Case 147:Input "Distance (nm)             ";Dt:GoTo Test1
Case 148:Input "TAS (kts)                 ";TAS:GoTo Test1
Case 149:Input "Fuel Burn (gal/hr)        ";FB:GoTo Test1
Case 150:Input "Wind Direction (deg)      ";WD:GoTo Test1
Case 151:Input "Wind Velocity (kts)       ";WV:GoTo Test1
Case 152:GoTo DR8
Case 153:Cls :End
Case Else :GoTo Test1
End Select
Loop
DR8: Cls
MH1 = TC+MV+Deg(ASin((WV/TAS)*Sin(Rad(TC-WD+180))))
MH2 = MH1-MV
If MH1<0 Then MH = MH1+360 Else If MH1>360 Then MH = MH1-360 Else MH = MH1
End If
MH = Cint(MH)
GS = Int(TAS*Cos((Rad(TC-MH2)))+WV*Cos((Rad(TC-WD+180))))
LT1 = Int(Dt/GS)+(Dt/GS-Int(Dt/GS))*0.6
LT2 = LT1*100
LT3 = Cint(LT2)
LT = LT3/100
LF = Int(FB*Dt/GS)
Print "^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>   Dead Reckoning   ^^"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_________________________"
Print "True Coarse (deg)     "; TC
Print "Magnetic Var. (deg)   "; MV
Print "Distance (nm)         "; Dt
Print "----------------------"
Print "TAS (kts)             "; TAS
Print "Fuel Burn (gal/hr)    "; FB
Print "Wind Direction (deg)  "; WD
Print "Wind Velocity (kts)   "; WV
Print "----------------------"
Print "Magnetic Heading (deg)"; MH
Print "Ground Speed (kts)    "; GS
Print "Leg Time (hh.mm)      "; LT
Print "Leg Fuel (gal)        "; LF
Print "----------------------"
Print
Print "Enter 1 to repeat Dead Recokoning"
Input "   or 2 to END"; N1
If N1 = 1 Then GoTo Test1: Else
If N1 = 2 Then Cls
EndIf
End