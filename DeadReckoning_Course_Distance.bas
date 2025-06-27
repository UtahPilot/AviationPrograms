Test1: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>   Dead Reckoning   ^^"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_________________________"
Print "1  True Coarse (deg)     "; TC
Print "2  Magnetic Var. (deg)   "; MV
Print "3  Distance (nm)         "; Dt
Print "-------------------------"
Print "4  TAS (kts)             "; TAS
Print "5  Fuel Burn (gal/hr)    "; FB
Print "6  Wind Direction (deg)  "; WD
Print "7  Wind Velocity )kts)   "; WV
Print "-------------------------"
Print "8  RUN Dead Reconing     "
Print "9  END Dead Reconing     "
Print "-------------------------"
Print
Input "Enter menu #,item value  "; N1,N2
If N1 = 1 Then GoTo DR1
If N1 = 2 Then GoTo DR2
If N1 = 3 Then GoTo DR3
If N1 = 4 Then GoTo DR4
If N1 = 5 Then GoTo DR5
If N1 = 6 Then GoTo DR6
If N1 = 7 Then GoTo DR7
If N1 = 8 Then GoTo DR8
If N1 = 9 Then Cls : End
DR1: TC = N2
Print "                         "; TC :GoTo Test1
DR2: MV = N2
Print "                         "; MV :GoTo Test1
DR3: Dt = N2
Print "                         "; Dt :GoTo Test1
DR4: TAS = N2
Print "                         "; TAS :GoTo Test1
DR5: FB =N2
Print "                         "; FB :GoTo Test1
DR6: WD = N2
Print "                         "; WD :GoTo Test1
DR7: WV = N2
Print "                         "; WV :GoTo Test1
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
Print "Wind Velocity )kts)   "; WV
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