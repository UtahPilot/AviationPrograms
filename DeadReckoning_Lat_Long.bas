E6B: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>>    Dead Reckoning    <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "________________________________"
Print "F1  Departing Lat (d.d)   "; LA1
Print "F2  Departing Long (d.d)  "; LO1
Print "F3  Arriving Lat (d.d)    "; LA2
Print "F4  Arriving Long (d.d)   "; LO2
Print "F5  Depart Mag. Var. (deg)"; MV
Print "--------------------------------"
Print "F6  TAS (kts)             "; TAS
Print "    TAS (mph)             "; Cint(TAS*1.1508)
Print "F7  Fuel Burn (gal/hr)    "; FB
Print "F8  Wind Direction (deg)  "; WD
Print "F9  Wind Velocity (kts)   "; WV
Print "    Wind Vel (mph)        "; Cint(WV*1.1508)
Print "--------------------------------"
Print "F10  RUN Dead Reckoning"
Print "F11  END Dead Reckoning"
Print "--------------------------------"
Print
Print "Press F# Key, then"
Print " enter item value"
Do
Do
a$=Inkey$
Loop Until a$<>""
Select Case Asc(a$)
Case 145:Input "Departing Lat (d.d)       ";LA1:GoTo E6B
Case 146:Input "Departing Long (d.d)      ";LO1:GoTo E6B
Case 147:Input "Arriving Lat (d.d)        ";LA2:GoTo E6B
Case 148:Input "Arriving Long (d.d)       ";LO2:GoTo E6B
Case 149:Input "Depart MaG Var. (Deg)     ";MV:GoTo E6B
Case 150:Input "TAS (kts)                 ";TAS:GoTo E6B
Case 151:Input "Fuel Burn (gal/hr)        ";FB:GoTo E6B
Case 152:Input "Wind Direction (deg)      ";WD:GoTo E6B
Case 153:Input "Wind Velocity (kts)       ";WV:GoTo E6B
Case 154:GoTo 10
Case 155:Cls :End
Case Else :GoTo E6B
End Select
Loop
10 Cls
    RLA1 = Rad(LA1)
    RLO1 = Rad(LO1)
    RLA2 = Rad(LA2)
    RLO2 = Rad(LO2)
    Dt = 60*Deg(ACos(Sin(RLA1)*Sin(RLA2)+Cos(RLA1)*Cos(RLA2)*Cos(RLO2-RLO1)))
    M1 = Deg(ACos((Sin(RLA2)-Sin(RLA1)*Cos(Rad(Dt/60)))/(Sin(Rad(Dt/60))*Cos(RLA1))))
    If Sin(RLO2-RLO1)<0 Then
    M2 = M1
    Else
    M2 = 360-M1
    EndIf
    M3 = M2+Deg(ASin((WV/TAS)*Sin(Rad(M2-WD+180))))
    M4 = M3+MV
    If M4<0 Then
    MH = M4+360
    Else If M4>360 Then
    MH = M4-360
    Else
    MH = M4
    EndIf
    MH = Cint(MH)
    GS = Cint(TAS*Cos((Rad(M2-M3)))+WV*Cos((Rad(M2-WD+180))))
    LT = Cint(Dt/GS)+(Dt/GS-Cint(Dt/GS))*0.6
    LT1 = LT*100: LT2 = Cint(LT1): LT = LT2/100
    LF = FB*Dt/GS
    LF1 = LF*10: LF2 = Cint(LF1): LF = LF2/10
    Dt = Cint(Dt)

E6B: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>    Dead Reckoning    <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Print "Departing Lat (d.d)      "; LA1
Print "Departing Long (d.d)     "; LO1
Print "Arriving Lat (d.d)       "; LA2
Print "Arriving Long (d.d)      "; LO2
Print "Depart Mag. Var. (deg)   "; MV
Print "-------------------------------"
Print "TAS (kts)                "; TAS
Print "TAS (mph)                "; Cint(TAS*1.1508)
Print "Fuel Burn (gal/hr)       "; FB
Print "Wind Direction (deg)     "; WD
Print "Wind Velocity (kts)      "; WV
Print "Wind Velocity (mph)      "; Cint(WV*1.1508)
Print "-------------------------------"
Print "Magnetic Heading (deg)   "; MH
Print "Distance (nm)            "; Dt
Print "Distance (sm)            "; Cint(Dt*1.1508)
Print "Ground Speed (kts)       "; GS
Print "Ground Speed (mph)       "; Cint(GS*1.1508)
Print "Leg Time (hh.mm)         "; LT
Print "Leg Fuel (gal)           "; LF
Print "-------------------------------"
Print
Print "Enter 1 to repeat Dead Reckoning"
Input "   or 2 to END"; N3
If N3 = 1 Then GoTo E6B: Else
If N3 = 2 Then Cls
EndIf
End