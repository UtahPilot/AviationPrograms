E6B: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>>   Dead Reckoning    <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Print "1  Departing Lat (d.d)   "; LA1
Print "2  Departing Long (d.d)  "; LO1
Print "3  Arriving Lat (d.d)    "; LA2
Print "4  Arriving Long (d.d)   "; LO2
Print "5  Depart Mag. Var. (deg)"; MV
Print "-------------------------------"
Print "6  TAS (kts)             "; TAS
Print "   TAS (mph)             "; Cint(TAS*1.1508)
Print "7  Fuel Burn (gal/hr)    "; FB
Print "8  Wind Direction (deg)  "; WD
Print "9  Wind Velocity (kts)   "; WV
Print "   Wind Vel (mph)        "; Cint(WV*1.1508)
Print "-------------------------------"
Print "10  RUN Dead Reckoning"
Print "11  END Dead Reckoning"
Print "-------------------------------"
Print
Input "Enter menu #,item value  "; N1,N2

If N1 = 1 Then LA1 = N2 : GoTo E6B
If N1 = 2 Then LO1 = N2 : GoTo E6B
If N1 = 3 Then LA2 = N2 : GoTo E6B
If N1 = 4 Then LO2 = N2 : GoTo E6B
If N1 = 5 Then MV = N2 : GoTo E6B
If N1 = 6 Then TAS = N2 : GoTo E6B
If N1 = 7 Then FB = N2 : GoTo E6B
If N1 = 8 Then WD = N2 : GoTo E6B
If N1 = 9 Then WV = N2 : GoTo E6B
If N1 = 10 Then GoTo 10 : GoTo 10
If N1 = 11 Then Cls : End
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
Print "1  Departing Lat (d.d)   "; LA1
Print "2  Departing Long (d.d)  "; LO1
Print "3  Arriving Lat (d.d)    "; LA2
Print "4  Arriving Long (d.d)   "; LO2
Print "5  Depart Mag. Var. (deg)"; MV
Print "-------------------------------"
Print "6  TAS (kts)             "; TAS
Print "   TAS (mph)             "; Cint(TAS*1.1508)
Print "7  Fuel Burn (gal/hr)    "; FB
Print "8  Wind Direction (deg)  "; WD
Print "9  Wind Velocity (kts)   "; WV
Print "   Wind Vel (mph)        "; Cint(WV*1.1508)
Print "-------------------------------"
Print "Magnetic Heading (deg)   "; MH
Print "Distance (nm)            "; Dt
Print "Dist (mph)               "; Cint(Dt*1.1508)
Print "Ground Speed (kts)       "; GS
Print "Grd Spd (mph)            "; Cint(GS*1.1508)
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