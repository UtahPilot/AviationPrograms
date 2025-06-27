Perform: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>  Aircraft Performance  <<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Print "1  Altitudes & TAS"
Print "2  Take-Off Breakeven Wind Velocity"
Print "3  Rate Of Climb Conversion"
Print "4  TAS Test"
Print "5  IAS / Mach Number"
Print "6  END Aircraft Performance"
Print "-------------------------------"
Print
Input "Enter Component Number "; N1
If N1 = 1 Then GoTo PFM1
If N1 = 2 Then GoTo PFM2
If N1 = 3 Then GoTo PFM3
If N1 = 4 Then GoTo PFM4
If N1 = 5 Then GoTo PFM10
If N1 = 6 Then Cls :End
GoTo Perform
PFM1: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>>   Altitudes & TAS   <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Print "1  Temp Conversion"
Print "2  Presure Altitude (Calc)"
Print "3  Density Altude"
Print "4  True Altitude"
Print "5  True Air Speed (TAS)"
Print "6  Go to Main Menu"
Print "7  End Aircraft Performance"
Print "-------------------------------"
Print
Input "Enter Component Number "; N1
If N1 = 1 Then GoTo PFM5
If N1 = 2 Then GoTo PFM6
If N1 = 3 Then GoTo PFM7
If N1 = 4 Then GoTo PFM8
If N1 = 5 Then GoTo PFM9
If N1 = 6 Then GoTo Perform
If N1 = 7 Then Cls :End
PFM5: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>>   Temp Conversion   <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Fahrenheit :             "; F
Print "Celsius =                 "; (F-32)*5/9
Print
Input "Celsius :                "; C
Print "Fahrenheit =              "; C*9/5+32
Print "-------------------------------"
Print
Print "Enter 1 to repeat Temp Convers"
Print "   or 2 for Alt & TAS Menu"
Input "   or 3 for Performance Menu"; N1
If N1 = 1 Then GoTo PFM5
If N1 = 2 Then GoTo PFM1
If N1 = 3 Then GoTo Perform
GoTo Perform
PFM6: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>   Presure Altitude    <<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Airport Elevation (Feet) "; Ele
Input "Altimeter Setting (In Hg)"; IH
Print "Presure Altitude (Feet)   "; Cint(Ele+145442.2*(1-(IH/29.92126)^0.190261))
Print "-------------------------------"
Print
Print "Enter 1 to repeat Presure Alti"
Print "   or 2 for Alt & TAS Menu"
Input "   or 3 for Performance Menu"; N1
If N1 = 1 Then GoTo PFM6
If N1 = 2 Then GoTo PFM1
If N1 = 3 Then GoTo Perform
GoTo Perform
PFM7: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>   Density Altitude   <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Presure Alt (Ft)  (29.92) "; PA1
Input "Outside Air Temp (OAT) (C)"; OAT
DA = PA1+((-0.0019812*PA1+288.15)/0.0019812)*(1-((-0.0019812*PA1+288.15)/(273.15+OAT))^0.234969)
Print "Density Altitude (Feet)   "; Cint(DA)
Print "-------------------------------"
Print
Print "Enter 1 to repeat Density Alti"
Print "   or 2 for Alt & TAS Menu"
Input "   or 3 for Performance Menu"; N1
If N1 = 1 Then GoTo PFM7
If N1 + 2 Then GoTo PFM1
If N1 = 3 Then GoTo Perform
GoTo Perform
PFM8: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>>    True Altitude    <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "OutsideAirTemp (OAT) (C) ";OAT
Input "Presure Alt (Ft)  (29.92)"; PA1
Input "Indicated Alt (Ft)       "; IDA
Input "Ground Station Alt - or 0"; GSA
CT1 = -0.02833+0.00172*OAT
CT2 = 0.0000034457*PA1
CT3 = 10^(CT1+CT2)
Print "Corrected Altitude (Feet)"; Cint((IDA-GSA)*CT3+GSA)
Print "-------------------------------"
Print
Print "Enter 1 to repeat True Altitude"
Print "   or 2 for Alt & TAS Menu"
Input "   or 3 for Performance Menu"; N1
If N1 = 1 Then GoTo PFM8
If N1 = 2 Then GoTo PFM1
If N1 = 3 Then GoTo Perform
GoTo Perform
PFM9: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>  True Air Speed (TAS)  <<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Presure Alt (Ft)  (29.92)"; PA1
Input "OutsideAirTemp (OAT) (F) "; OAT
Input "Indicated Air Speed (IAS)"; IAS
TAS1 = 29.9216*(1-0.00000687535*PA1)^5.25561
TAS2 = 4.16470606*Sqr(TAS1/(OAT+460))
Print "True Air Speed (TAS)      "; Cint(IAS/TAS2)
Print "-------------------------------"
Print
Print "Enter 1 to repeat True Air Spd "
Print "   or 2 for Alt & TAS Menu"
Input "   or 3 for Performance Menu"; N1
If N1 = 1 Then GoTo PFM9
If N1 = 2 Then GoTo PFM1
If N1 = 3 Then GoTo Perform
GoTo Perform
PFM2: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "> Take-Off Breakeven Wind Vel <"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Runway Slope (Deg)       "; RS
Input "POH LiftOff Distance (Ft)"; LD
Input "POH LiftOff Speed (KTAS) "; LS
Print "Breakeven Wind Vel (kts)  "; Cint(RS*LD*0.1971/LS)
Print "-------------------------------"
Print
Print "Enter 1 to repeat Take=Off Breakeven"
Input "   or 2 for Performance Menu"; N1
    If N1 = 1 Then GoTo PFM2
    If N1 = 2 Then GoTo Perform
GoTo Perform
PFM3: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>> Rate of Climb Conversion <<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Rate of Climb (Ft/nm)    "; RC
Input "Ground Speed (kts)       "; GS1
Print "Rate of Climb (Ft/min)    "; Cint(RC*GS1/60)
Print "-------------------------------"
Print
Print "Enter 1 to repeat Rate of Climb"
Input "   or 2 for Performance Menu"; N1
    If N1 = 1 Then GoTo PFM3
    If N1 = 2 Then GoTo Perform
GoTo Perform
PFM4: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>>>>    TAS Test    <<<<<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "GPS Grd Spd @ 150 Heading"; H1
Input "GPS Grd Spd @ 270 Heading"; H2
Input "GPS Grd Spd @ 30 Heading "; H3
AST1 = (H1^2+H2^2+H3^2)/3
AST2 = H1^2/AST1-1
AST3 = H2^2/AST1-1
AST4 = H3^2/AST1-1
AST5 = (AST2^2+AST3^2+AST4^2)/6
AST6 = 0.5+Sqr(0.25-AST5)
AST7 = AST5/AST6
Print "True Air Speed (TAS-kts)  "; Cint(Sqr(AST1*AST6))
Print "Wind Speed (kts)          "; Cint(Sqr(AST1*AST7))
Print "NOTE:  Any three headings that"
Print "differ by 120 Deg can be used."
Print "------------------------------"
Print
Print "Enter 1 to repeat TAS Test"
Input "   or 2 for Performance Menu"; N1
    If N1 = 1 Then GoTo PFM4
    If N1 = 2 Then GoTo Perform
GoTo Perform
PFM10: Cls
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print ">>>>  IAS / Mach Number   <<<<<"
Print "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
Print "_______________________________"
Input "Pressure Altitude (ft) (29.92) "; PA
Input "Indicated Airspeed (kts)       "; IAS
MN = Sqr(5*(((((1+0.2*(IAS/661.5)^2)^3.5-1)*(1-(6.875*10^-6)*PA)^-5.2656)+1)^0.286-1))
MN = Cint(MN*100)/100
Print "Mach Number                    "; MN
Print
Input "Pressure Altitude (ft) (29.92) "; PA
Input "Mach Number                    "; MN
IAS = 661.4786*(5*((1+((1-0.000006876*PA)^5.2559)*((1+MN^2/5)^3.5-1))^(2/7)-1))^0.5
IAS = Cint(IAS)
Print "Indicated Air Speed )kts)      "; IAS
Print "-------------------------------"
Print
Print "Enter 1 to repeat IAS / Mach #"
Input "   or 2 for Performance Menu"; N1
    If N1 = 1 Then GoTo PFM10
    If N1 = 2 Then GoTo Perform
GoTo Perform
End