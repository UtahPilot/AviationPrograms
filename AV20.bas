AirNav: Cls : Clear
Dim A$(24) : Dim D!(24,3)
GoTo 20
10
Print "----------------------------------------"
Print "--------   Airport Navigation   --------"
Print "----------------------------------------"
Print
Print " 1 Afton          13 Logan"
Print " 2 Alpine         14 Malad City"
Print " 3 Bear Lake      15 Morgan City"
Print " 4 Blackfoot      16 Oakley"
Print " 5 Brigham City   17 Preston"
Print " 6 Burley         18 Price"
Print " 7 Downey         19 Roosevelt"
Print " 8 Evanston       20 Spanish Fork"
Print " 9 Fort Bridger   21 Tigert"
Print "10 Heber City     22 Tooele Valley"
Print "11 Jackpot        23 Vernal"
Print "12 Kemmer         24 Wendover"
Print
Print "33 END App        44 GoTo TOOL KIT"
Print
Input "Enter Departing AP #  ";DEP
If DEP = 33 Then Cls :Clear :End
If DEP = 44 Then Run "TOOL.bas"
Input "Enter Arriving AP #   ";ARR
Cls
Print "--------   Airport Navigation   --------"
Print
Print "Departing:   ";A$(DEP)
Print "Arriving:    ";A$(ARR)
Print
Input "TAS (mph)             ";TAS
Input "Fuel Burn (gal/hr)    ";FB
Input "Wind Direction (Deg)  ";WD
Input "Wind Velocity (mph)   ";WV
LAT1 = Rad(D!(DEP,1))
LON1 = Rad(D!(DEP,2))
LAT2 = Rad(D!(ARR,1))
LON2 = Rad(D!(ARR,2))
MAG = D!(DEP,3)
C1 = 60*(ACos(Sin(LAT1)*Sin(LAT2)+Cos(LAT1)*Cos(LAT2)*Cos(LON2-LON1)))*180/Pi
C2 = (ACos((Sin(LAT2)-Sin(LAT1)*Cos(C1/60*Pi/180))/(Sin(C1/60*Pi/180)*Cos(LAT1))))*180/Pi
If Sin(LON2-LON1)<0 Then C3 = C2 Else C3 = 360-C2
C4 = C3+(ASin(WV/TAS*Sin((C3-WD+180)*Pi/180)))*180/Pi
C5 = MAG + C4
If C5<0 Then MH=C5+360 Else MH = C5
If C5>360 Then MH=C5-360 Else MH = C5
DIS = C1*1.15078
GS = TAS*Cos((C3-C4)*Pi/180)+WV*Cos((C3-WD+180)*Pi/180)
TI = Int(DIS/GS)+(DIS/GS-Int(DIS/GS))*0.6
FU = FB*DIS/GS
Print
Print "Magnetic Heading (Deg) = ";Val(Str$(MH,15,0))
Print "Distance (sm)          = ";Val(Str$(DIS,15,0))
Print "Ground Speed (mph)     = ";Val(Str$(GS,15,0))
Print "Time (hh.min)          = ";Val(Str$(TI,15,2))
Print "Fuel (gal)             = ";Val(Str$(FU,15,1))
Print
Input "Press ENTER for Main Menu";L
GoTo AirNav
20
DATA_SET_A:
Data "Afton", "Alpine", "Bear Lake", "Blackfoot", "Brigham City", "Burley", "Downey", "Evanston", "Fort Bridger"
Data "Heber City", "Jacjpot", "Kemmer", "Logan", "Malad City", "Morgan City", "Oakley", "Preston", "Price"
Data "Roosevelt", "Spanish Fork", "Tigert", "Tooele Valley", "Vernal", "Windover"
Restore DATA_SET_A
For I = 1 To 24
Read A$(I)
Next I
DATA_SET_B:
Data 42.7088, 110.9422, -12
Data 43.1818, 111.0385, -15
Data 42.2481, 111.3382, -15
Data 43.2092, 112.3496, -15
Data 41.5543, 112.0623, -11
Data 42.5426, 113.7715, -12
Data 42.4242, 112.1096, -15
Data 41.2748, 111.0346, -13
Data 41.3919, 110.4068, -11
Data 40.4818, 111.4288, -11
Data 41.9758, 114.6580, -13
Data 41.8219, 110.5562, -11
Data 41.7935, 111.8564, -11
Data 42.1704, 112.2893, -15
Data 41.1487, 111.7672, -15
Data 42.2339, 113.8776, -16
Data 42.1067, 111.9121, -15
Data 39.6152, 110.7511, -11
Data 40.2784, 110.0514, -11
Data 40.1450, 111.6677, -11
Data 42.6484, 111.5809, -15
Data 40.6125, 112.3508, -13
Data 40.4361, 109.5114, -11
Data 40.7184, 114.0254, -12
Restore DATA_SET_B
For I = 1 To 24
For J = 1 To 3
Read D!(I,J)
Next J
Next I
GoTo 10