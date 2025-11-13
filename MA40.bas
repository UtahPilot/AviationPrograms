Stat:
Cls : Clear : Dim A(24)
Print "----------------------------------------"
Print "------------   STATISTICS   ------------"
Print "----------------------------------------"
Print
Print "Enter Data - Enter 0 When Finished:"
I = 0
Dat:
I = I + 1
Print "Data";I; "    "; :Input A(I)
If A(I) = 0 GoTo 1
GoTo Dat
1
I = I - 1
MinVal = A(1)
MaxVal = A(1)
For J = 1 To I
If A(J) < MinVal Then MinVal = A(J)
If A(J) > MaxVal Then MaxVal = A(J)
DS = DS + A(J)
SS = SS + A(J)^2
Next J
RAG = MaxVal - MinVal
MN = DS/I
CSS = SS - I*MN^2
SD = Sqr(CSS/(I-1))
Var1 = SD^2
CVar = SD/MN
Sig3 = SD*3
MSig1 = MN+Sig3
MSig2 = MN-Sig3
Cls
Print "----------------------------------------"
Print "------------   STATISTICS   ------------"
Print "----------------------------------------"
Print
Print "Sample Size              "; I
Print "Maximun                  "; Val(Str$(MaxVal,15,2))
Print "Minimun                  "; Val(Str$(MinVal,15,2))
Print "Range                    "; Val(Str$(RAG,15,2))
Print "Mean                     "; Val(Str$(MN,15,2))
Print "Sum of Squares           "; Val(Str$(SS,15,2))
Print "Corrected Sum of Squares "; Val(Str$(CSS,15,2))
Print "Standard Deviation       "; Val(Str$(SD,15,2))
Print "Variance                 "; Val(Str$(Var1,15,2))
Print "Coefficient of Variation "; Val(Str$(CVar,15,2))
Print "3 Sigma                  "; Val(Str$(Sig3,15,2))
Print "Mean + 3 Sigma           "; Val(Str$(MSig1,15,2))
Print "Mean - 3 Sigma           "; Val(Str$(MSig2,15,2))
Print
Print "1  New Data Set"
Print "2  GoTo TOOL KIT"
Input "3  End App";Z
If Z = 1 GoTo Stat
If Z = 2 Then Clear : Run "TOOL.bas"
If Z = 3 Then Cls : Clear : End
Cls : Clear : End