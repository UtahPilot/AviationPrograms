E6B: Cls
Print "----------------------------------------"
Print "---------    Dead Reckoning    ---------"
Print "----------------------------------------"
Print
Print "F1  Depart Lat,Long(d.d)";LA1;LO1
Print "F2  Arriv Lat,Long (d.d)";LA2;LO2
Print "F3  Depart Mag. Var. (deg)"; MV
Print "F4  TAS (kts)             "; TAS
Print "F5  Fuel Burn (gal/hr)    "; FB
Print "F6  Wind Direction (deg)  "; WD
Print "F7  Wind Velocity (kts)   "; WV
Print "F8  RUN Dead Reckoning"
Print "F9  GoTo TOOL KIT"
Print "F10 END App"
Print
Print "Press F# Key, then"
Print "Enter item value"
Do
a$=Inkey$
Loop Until a$<>""
Select Case Asc(a$)
Case 145:Input "Depart Lat,Long(d.d)";LA1;LO1:GoTo E6B
Case 146:Input "Arriv Lat,Long (d.d)";LA2;LO2:GoTo E6B
Case 147:Input "Depart MaG Var. (Deg)     ";MV:GoTo E6B
Case 148:Input "TAS (kts)                 ";TAS:GoTo E6B
Case 149:Input "Fuel Burn (gal/hr)        ";FB:GoTo E6B
Case 150:Input "Wind Direction (deg)      ";WD:GoTo E6B
Case 151:Input "Wind Velocity (kts)       ";WV:GoTo E6B
Case 152:GoTo 10
Case 153:Run "TOOL.bas"
Case 154:Cls : End
Case Else : Cls : GoTo E6B
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
    LT = Val(Str$(LT,15,2))
    LF = FB*Dt/GS
    LF = Val(Str$(LF,15,1))
    Dt = Cint(Dt)
E6B: Cls
Print "----------------------------------------"
Print "---------    Dead Reckoning    ---------"
Print "----------------------------------------"
Print
Print "Magnetic Heading (deg)   "; MH
Print "Distance (nm)            "; Dt
Print "Distance (sm)            "; Cint(Dt*1.1508)
Print "Ground Speed (kts)       "; GS
Print "Ground Speed (mph)       "; Cint(GS*1.1508)
Print "Leg Time (hh.mm)         "; LT
Print "Leg Fuel (gal)           "; LF
Print
Print
Print "1 Dead Reckoning Menu"
Print "2 GoTo TOOL KIT"
Input "3 END App"; N3
Print
Input "Enter Choice No.";N3
If N3 = 1 Then GoTo E6B: Else
If N3 = 2 Then Run "TOOL.bas"
If N3 = 3 Then Cls : End
End