Triangle: Cls
Print "----------------------------------------"
Print "------------    Triangle    ------------"
Print "----------------------------------------"
Print
Print "1  SSS"
Print "2  SAS"
Print "3  ASA"
Print "4  SAA"
Print "5  SSA"
Print "6  GoTo Tool Kit"
Print "7  END App"
Print
Input "Enter number for given data: ";F
If F = 1 GoTo SSS
If F = 2 GoTo SAS
If F = 3 GoTo ASA
If F = 4 GoTo SAA
If F = 5 GoTo SSA
If F = 6 Then Run "TOOL.bas"
If F = 7 Then Cls : End
Cls : End
SSS: Cls
Print "----------------------------------------"
Print "------------    Triangle    ------------"
Print "----------------------------------------"
Print "> Angles are opposite sides <"
Print "> Angles are in Degrees <"
Print
Print "SSS"
Input "S1 ";S1
Input "S2 ";S2
Input "S3 ";S3
Print
A1 = Deg(ACos(Sqr(((S1+S2+S3)/2)*(((S1+S2+S3)/2)-S1)/(S2*S3))))*2
A2 = Deg(ACos(Sqr(((S1+S2+S3)/2)*(((S1+S2+S3)/2)-S2)/(S1*S3))))*2
A3 = 180-A1-A2
AR = S1*S2*Sin(Rad(A3))/2
Print "A1 =";Val(Str$(A1,15,2))
Print "A2 =";Val(Str$(A2,15,2))
Print "A3 =";Val(Str$(A3,15,2))
Print "AREA =";Val(Str$(AR,15,2))
Print
Input "Press Enter for Main Menu";F
GoTo Triangle
SAS: Cls
Print "----------------------------------------"
Print "------------    Triangle    ------------"
Print "----------------------------------------"
Print "> Angles are opposite sides <"
Print "> Angles are in Degrees <"
Print
Print "SAS"
Input "S1 ";S1
Input "A2 ";A2
Input "S3 ";S3
Print
S2 = Sqr(S1^2+S3^2-2*S1*S3*Cos(Rad(A2)))
A1 = Deg(ACos(Sqr(((S1+S3+S2)/2)*(((S1+S3+S2)/2)-S1)/(S3*S2))))*2
A3 = Deg(ACos(Sqr(((S1+S3+S2)/2)*(((S1+S3+S2)/2)-S3)/(S1*S2))))*2
AR = S1*S2*Sin(Rad(A3))/2
Print "A1 =";Val(Str$(A1,15,2))
Print "S2 =";Val(Str$(S2,15,2))
Print "A3 =";Val(Str$(A3,15,2))
Print "AREA =";Val(Str$(AR,15,2))
Print
Input "Press Enter for Main Menu";F
GoTo Triangle
ASA: Cls
Print "----------------------------------------"
Print "------------    Triangle    ------------"
Print "----------------------------------------"
Print "> Angles are opposite sides <"
Print "> Angles are in Degrees <"
Print
Print "ASA"
Input "A1 ";A1
Input "S3 ";S3
Input "A2 ";A2
Print
A3 = Pi-Rad(A1)-Rad(A2)
S2 = S3*Sin(Rad(A2))/Sin(A3)
S1 = S2*Cos(A3)+S3*Cos(Rad(A2))
AR = S1*S2*Sin(A3)/2
Print "S1 =";Val(Str$(S1,15,2))
Print "A3 =";180-A1-A2
Print "S2 =";Val(Str$(S2,15,2))
Print "AREA =";Val(Str$(AR,15,2))
Print
Input "Press Enter for Main Menu";F
GoTo Triangle
SAA: Cls
Print "----------------------------------------"
Print "------------    Triangle    ------------"
Print "----------------------------------------"
Print "> Angles are opposite sides <"
Print "> Angles are in Degrees <"
Print
Print "SAA"
Input "S1 ";S1
Input "A2 ";A2
Input "A1 ";A1
Print
S2 = S1*Sin(Rad(A2))/Sin(Rad(A1))
S3 = S1*Cos(Rad(A2))+S2*Cos(Rad(A1))
A3 = 180-A1-A2
Ar = S2*S1*Sin(Rad(A3))/2
Print "S3 ";Val(Str$(S3,15,2))
Print "S2 ";Val(Str$(S2,15,2))
Print "A3 ";180-A1-A2
Print "AREA =";Val(Str$(AR,15,2))
Print
Input "Press Enter for Main Menu";F
GoTo Triangle
SSA: Cls
Print "----------------------------------------"
Print "------------    Triangle    ------------"
Print "----------------------------------------"
Print "> Angles are opposite sides <"
Print "> Angles are in Degrees <"
Print
Print "SSA"
Input "S1 ";S1
Input "S2 ";S2
Input "A1 ";A1
Print
A2L = ASin(S2*Sin(Rad(A1))/S1)
S3L = S1*Cos(A2L)+S2*Cos(Rad(A1))
A3L = ACos(-Cos(Rad(A1)+A2L))
ARL = S1*S2*Sin(A3L)/2
A2S = ACos(-Cos(A2L))
S3S = S1*Cos(A2S)+S2*Cos(Rad(A1))
A3S = ACos(-Cos(Rad(A1)+A2S))
ARS = S1*S3S*Sin(A2S)/2
A2L = Deg(A2L)
A3L = Deg(A3L)
A2S = Deg(A2S)
A3S = Deg(A3S)
Print "Large           Small "
Print "Triangle        Triangle"
Print "S3 ";Val(Str$(S3L,15,2)),"S3 ";Val(Str$(S3S,15,2))
Print "A2 ";Val(Str$(A2L,15,2)),"A2 ";Val(Str$(A2S,15,2))
Print "A3 ";Val(Str$(A3L,15,2)),"A3 ";Val(Str$(A3S,15,2))
Print "AREA ";Val(Str$(ARL,15,2)),"AREA ";Val(Str$(ARS,15,2))
Print
Input "Press Enter for Main Menu";F
GoTo Triangle
End