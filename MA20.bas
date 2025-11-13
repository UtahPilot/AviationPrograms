Clear
Option BASE 1
Dim X(25), Y(25), Yfit(25), Z(25)
Dim Sx, Sy, Sxy, Sxx, Syy, SSR, SST
Dim lnX(25), lnY(25), Sx2
Dim m, b, R2
Dim I,N
Reg: Cls
Print "----------------------------------------"
Print "------------   Regression   ------------"
Print "----------------------------------------"
Print
Print "1  Enter (X,Y) Data"
Print "2  Check Entered (X,Y) Data"
Print "3  See all five models Coefficients"
Print "4  Function Plotter"
Print "5  GoTo TOOL Kit"
Print "6  END App"
Print
Input "Input Desired Opperation Number";L
If L = 1 GoTo 1
If L = 2 GoTo 2
If L = 3 GoTo 3
If L = 4 Then Run "MA50.bas"
If L = 5 Then Run "TOOL.bas"
If L = 6 Then Cls : Clear : End
Cls : Clear : End
1 : Cls
Print "----------------------------------------"
Print "------------   Regression   ------------"
Print "----------------------------------------"
Print
Input "Enter Number of Data Points ";N
Print "Enter (X,Y) Data:"
Print
For I = 1 To N
Print "X (";I;" )    "; :Input X(I)
Print "Y (";I;" )    "; :Input Y(I)
Next I
GoTo Reg
2 : Cls
Print "      Data Set"
Print "Number  X         Y"
For I = 1 To N
Print I;"     ";X(I);"        ";Y(I)
Next I
Print
Input "Press ENTER for Main Menu";L
GoTo Reg
3 : Cls
Print "----------------------------------------"
Print "------------   Regression   ------------"
Print "----------------------------------------"
Print
Print "Linear Correlation: From +1 to -1"
Print "Near +1 or -1 is a close correlation"
Print "Near 0 is a bad or no correlation"
Print
Print "Sum of Squared Errors: Smallest"
Print "value indicates best fit"
Print
Input "Press ENTER to continue";L
Sx=0:Sy=0:Sxy=0:Sxx=0:Syy=0
For I = 1 To N
Sx = Sx + X(I)
Sy = Sy + Y(I)
Sxy = Sxy +X(I)*Y(I)
Sxx = Sxx + X(I)*X(I)
Syy = Syy + Y(I)*Y(I)
Next I
ma = (N*Sxy-Sx*Sy)/(N*Sxx-Sx*Sx)
ba = (Sy-ma*Sx)/N
SSR = 0 : SST = 0 : SSEa = 0
For I = 1 To N
Yfit(I) = ma*X(I) + ba
SSR = SSR + (Yfit(I) - Sy/N)^2
SST = SST + (Y(I) - Sy/N)^2
SSEa = SSEa + (Y(I) - ma*X(I) - ba)^2
Next I
R2a = Sqr(SSR/SST)
For I = 1 To N
lnY(I) = Log(Y(I))
Next I
Sx=0:Sy=0:Sxy=0:Sx2=0:SSEb=0
For I = 1 To N
Sx = Sx + X(I)
Sy = Sy + lnY(I)
Sxy = Sxy + X(I)*lnY(I)
Sx2 = Sx2 + X(I)*X(I)
Next I
slope = (N*Sxy - Sx*Sy)/(N*Sx2 - Sx*Sx)
inter = (Sy - slope*Sx)/N
mb = Exp(slope)
bb= Exp(inter)
For I = 1 To N
yh = bb*mb^X(I)
SSEb = SSEb + (Y(I) - yh)^2
Next I
For I = 1 To N
Z(I) = Log(X(I))
Next I
Sz=0:Sy=0:SSEc=0
For I = 1 To N
Sz = Sz + Z(I)
Sy = Sy + Y(I)
Next I
meanZ = Sz/N
meanY = Sy/N
num=0:den=0
For I = 1 To N
num = num + (Z(I) - meanZ)*(Y(I) - meanY)
den = den + (Z(I) - meanZ)^2
Next I
mc = num/den
bc = meanY - mc*meanZ
For I = 1 To N
yh = mc*Log(X(I)) + bc
SSEc = SSEc + (Y(I) - yh)^2
Next I
For I = 1 To N
lnX(I) = Log(X(I))
lnY(I) = Log(Y(I))
Next I
Sx=0:Sy=0:Sxy=0:Sx2=0:SSEd=0
For I = 1 To N
Sx = Sx + lnX(I)
Sy = Sy + lnY(I)
Sxy = Sxy + lnX(I)*lnY(I)
Sx2 = Sx2 + lnX(I)*lnX(I)
Next I
md = (N*Sxy - Sx*SY)/(N*Sx2 - Sx*Sx)
bd = Exp((Sy - md*Sx)/N)
For I = 1 To N
yh = bd*X(I)^md
SSEd = SSEd + (Y(I) - yh)^2
Next I
Sx=0:Sx2=0:Sx3=0:Sx4=0
Sy=0:Sxy=0:Sx2y=0:SSEe=0
For I = 1 To N
Sx = Sx + X(I)
Sx2 = Sx2 + X(I)^2
Sx3 = Sx3 + X(I)^3
Sx4 = Sx4 + X(I)^4
Sy = Sy + Y(I)
Sxy = Sxy + X(I)*Y(I)
Sx2y = Sx2y + X(I)^2*Y(I)
Next I
DET = N*(Sx2*Sx4 - Sx3*Sx3) - Sx*(Sx*Sx4 - Sx2*Sx3) + Sx2*(Sx*Sx3 - Sx2*Sx2)
Da = Sy*(Sx2*Sx4 - Sx3*Sx3) - Sx*(Sxy*Sx4 - Sx3*Sx2y) + Sx2*(Sxy*Sx3 - Sx2*Sx2y)
Db = N*(Sxy*Sx4 - Sx3*Sx2y) - Sy*(Sx*Sx4 - Sx2*Sx3) + Sx2*(Sx*Sx2y - Sx2*Sxy)
Dc = N*(Sx2*Sx2y - Sxy*Sx3) - Sx*(Sx*Sx2y - Sx2*Sxy) + Sy*(Sx*Sx3 - Sx2*Sx2)
ae = Da/DET
be = Db/DET
ce = Dc/DET
For I = 1 To N
yh = ce*X(I)^2 + be*X(I) + ae
SSEe = SSEe + (Y(I) - yh)^2
Next I
Cls
Print "Linear:     Slope (m) =   ";ma
Print "        Intercept (b) =   ";ba
Print "        Correlation (R2) =";R2a
Print "   Sum of Squared Errors =";SSEa
Print
Print "Exponential:Slope (m) =   ";mb
Print "        Intercept (b) =   ";bb
Print "   Sum of Squared Errors =";SSEb
Print
Print "Logaritial: Slope (m) =   ";mc
Print "        Intercept (b) =   ";bc
Print "   Sum of Squared Errors =";SSEc
Print
Print "Power:      Slope (m) =   ";md
Print "        Intercept (b) =   ";bd
Print "   Sum of Squared Errors =";SSEd
Print
Print "Polynomial:       (a) =   ";ce
Print "                  (b) =   ";be
Print "                  (c) =   ";ae
Print "   Sum of Squared Errors =";SSEe
Print
Print
Input "Press ENTER for Main Menu";L
GoTo Reg
End