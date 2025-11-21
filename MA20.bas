Clear
Option EXPLICIT
Option DEFAULT NONE
Option BASE 1
Dim Float A(25), B(25), Yfit(25), Z(25), r(2)
Dim Float Sx, Sy, Sxy, Sxx, Syy, SSR, SST
Dim Float lnA(25), lnB(25), Sx2, SSEa
Dim Float ma, ba, mb, bb, mc, bc, md, bd
Dim Float Da, Db, Dc, ae, be, ce, SSEb
Dim Float xmax, xmin, ymax, ymin, slope
Dim Float xscale, yscale, R2a, Sz
Dim Float x_min, x_max, y_min, y_max, yh
Dim Float x_scale, y_scale, meanz, meanY
Dim Float screen_x, screen_y, old_y
Dim Float X, Y, num, den, DET, inter
Dim Float SSEc, SSEd, SSEe, Sx2y
Dim Float Sx3, Sx4
Dim Integer I, N, p_x, first_point, FPC
Dim String eq$, L
Reg: CLS
Print "----------------------------------------"
Print "------------   Regression   ------------"
Print "----------------------------------------"
Print
Print "1  Enter (X,Y) Data"
Print "2  Check Entered (X,Y) Data"
Print "3  Calculate five models Coefficients"
Print "4  Function Plotter"
Print "5  GoTo TOOL Kit"
Print "6  END App"
Print
Input "Input Desired Opperation Number";I
If I = 1 GoTo 1
If I = 2 GoTo 2
If I = 3 GoTo 3
If I = 4 Then GoTo FuncPlot
If I = 5 Then Run "TOOL.bas"
If I = 6 Then CLS : Clear : End
CLS : Clear : End
1 : CLS
Print "----------------------------------------"
Print "------------   Regression   ------------"
Print "----------------------------------------"
Print
Input "Enter Number of Data Points ";N
Print "Enter (X,Y) Data:"
Print
For I = 1 To N
Print "X(";I;" )    "; :Input A(I)
Print "Y(";I;" )    "; :Input B(I)
Next I
2 : CLS
Print "      Data Set"
Print "Number  X         Y"
For I = 1 To N
Print I;"     ";A(I);"        ";B(I)
Next I
Print
Print "1  Re-Enter Data"
Print "2  Calculate Regression";I
Input "3  Main Menu";I
If I = 1 GoTo 2
If I = 2 GoTo 3
If I = 3 GoTo Reg
3 : CLS
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
Print "Linear Eq:   Y = m*X + b"
Print "Exponenial:  Y = b * m^X"
Print "Logarithmic: Y = m * LN(X) + b"
Print "Power:       Y = b * X^m"
Print "Polynomial:  Y = a*X*X + b*X + c"
Print
Print
Input "Press ENTER to continue";L
Sx=0:Sy=0:Sxy=0:Sxx=0:Syy=0
For I = 1 To N
Sx = Sx + A(I)
Sy = Sy + B(I)
Sxy = Sxy +A(I)*B(I)
Sxx = Sxx + A(I)*A(I)
Syy = Syy + B(I)*B(I)
Next I
ma = (N*Sxy-Sx*Sy)/(N*Sxx-Sx*Sx)
ba = (Sy-ma*Sx)/N
SSR = 0 : SST = 0 : SSEa = 0
For I = 1 To N
Yfit(I) = ma*A(I) + ba
SSR = SSR + (Yfit(I) - Sy/N)^2
SST = SST + (B(I) - Sy/N)^2
SSEa = SSEa + (B(I) - ma*A(I) - ba)^2
Next I
R2a = Sqr(SSR/SST)
For I = 1 To N
lnB(I) = Log(B(I))
Next I
Sx=0:Sy=0:Sxy=0:Sx2=0:SSEb=0
For I = 1 To N
Sx = Sx + A(I)
Sy = Sy + lnB(I)
Sxy = Sxy + A(I)*lnB(I)
Sx2 = Sx2 + A(I)*A(I)
Next I
slope = (N*Sxy - Sx*Sy)/(N*Sx2 - Sx*Sx)
inter = (Sy - slope*Sx)/N
mb = Exp(slope)
bb= Exp(inter)
For I = 1 To N
yh = bb*mb^A(I)
SSEb = SSEb + (B(I) - yh)^2
Next I
For I = 1 To N
Z(I) = Log(A(I))
Next I
Sz=0:Sy=0:SSEc=0
For I = 1 To N
Sz = Sz + Z(I)
Sy = Sy + B(I)
Next I
meanZ = Sz/N
meanY = Sy/N
num=0:den=0
For I = 1 To N
num = num + (Z(I) - meanZ)*(B(I) - meanY)
den = den + (Z(I) - meanZ)^2
Next I
mc = num/den
bc = meanY - mc*meanZ
For I = 1 To N
yh = mc*Log(A(I)) + bc
SSEc = SSEc + (B(I) - yh)^2
Next I
For I = 1 To N
lnA(I) = Log(A(I))
lnB(I) = Log(B(I))
Next I
Sx=0:Sy=0:Sxy=0:Sx2=0:SSEd=0
For I = 1 To N
Sx = Sx + lnA(I)
Sy = Sy + lnB(I)
Sxy = Sxy + lnA(I)*lnb(I)
Sx2 = Sx2 + lnA(I)*lnA(I)
Next I
md = (N*Sxy - Sx*SY)/(N*Sx2 - Sx*Sx)
bd = Exp((Sy - md*Sx)/N)
For I = 1 To N
yh = bd*A(I)^md
SSEd = SSEd + (B(I) - yh)^2
Next I
Sx=0:Sx2=0:Sx3=0:Sx4=0
Sy=0:Sxy=0:Sx2y=0:SSEe=0
For I = 1 To N
Sx = Sx + A(I)
Sx2 = Sx2 + A(I)^2
Sx3 = Sx3 + A(I)^3
Sx4 = Sx4 + A(I)^4
Sy = Sy + B(I)
Sxy = Sxy + A(I)*B(I)
Sx2y = Sx2y + A(I)^2*B(I)
Next I
DET = N*(Sx2*Sx4 - Sx3*Sx3) - Sx*(Sx*Sx4 - Sx2*Sx3) + Sx2*(Sx*Sx3 - Sx2*Sx2)
Da = Sy*(Sx2*Sx4 - Sx3*Sx3) - Sx*(Sxy*Sx4 - Sx3*Sx2y) + Sx2*(Sxy*Sx3 - Sx2*Sx2y)
Db = N*(Sxy*Sx4 - Sx3*Sx2y) - Sy*(Sx*Sx4 - Sx2*Sx3) + Sx2*(Sx*Sx2y - Sx2*Sxy)
Dc = N*(Sx2*Sx2y - Sxy*Sx3) - Sx*(Sx*Sx2y - Sx2*Sxy) + Sy*(Sx*Sx3 - Sx2*Sx2)
ae = Da/DET
be = Db/DET
ce = Dc/DET
For I = 1 To N
yh = ce*A(I)^2 + be*A(I) + ae
SSEe = SSEe + (B(I) - yh)^2
Next I
10 CLS
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
Print "1  Plot Models"
Print "2  Main Menu"
Input "3  GoTo Tools";I
FPC = 0
If I = 1 GoTo FuncPlot
If I = 2 GoTo Reg
If I = 3 Then Run "TOOL"
End
FuncPlot:
CLS
FPC = FPC + 1
For I = 1 To N
If A(I) > xmax Then
xmax = A(I)
End If
If A(I) < xmin Then
xmin = A(I)
End If
If B(I) > ymax Then
ymax = B(I)
End If
If B(I) < ymin Then
ymin = B(I)
End If
Next I
xscale = (318) / (xmax - xmin)
yscale = (318) / (ymax - ymin)
For I = 32 To 288 Step 32
Line 0, I, 7, I
Line I, 312, I, 319
Next I
Line  0, 160, 16, 160, 5
Line 160, 305, 160, 319, 5
Print @(0,0)
If FPC = 1 Then Print "Linear"
If FPC = 2 Then Print "Exponent"
If FPC = 3 Then Print "Logarithm"
If FPC = 4 Then Print "Power"
If FPC = 5 Then Print "Polynomial"
Color RGB(RED)
first_point = 1
For p_x = 1 To 318
X = xmin + p_x / xscale
If FPC = 1 Then Y = ma*X + ba
If FPC = 2 Then Y = bb*mb^X
If FPC = 3 Then Y = mc*Log(X)+bc
If FPC = 4 Then Y = bd*X^md
If FPC = 5 Then Y = ce*X^2+be*X+ae
screen_y = 320 - (Y * yscale)
screen_x = p_x
If first_point Then
first_point = 0
Pixel screen_x, screen_y
Else
Line p_x-1, old_y, p_x, screen_y
End If
old_y = screen_y
Next p_x
Color RGB(WHITE)
r(1) = 2
For I = 1 To N
Circle A(I)*xscale, 318-B(I)*yscale, r(1)
Next I
Color RGB(GREEN)
Input L
If FPC = 5 Then GoTo 10
If L = "" Then GoTo FuncPlot

