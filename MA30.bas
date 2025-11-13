Sim: Cls : Clear
Print "----------------------------------------"
Print "------   Simultaneous Equations   ------"
Print "----------------------------------------"
Print
Print "N Linear Equations with N Variabies"
Print
Input "Enter Number of Equations:   ";N
Print
Dim A(N, N+1)
Dim X(N)
PMC = 0
GoTo MatIn
1 Cls
Print "Initial Matrix:"
GoTo PrintMatrix
3 PMC = 1
Print "Matrix in Row-Echelon Form:"
GoTo PrintMatrix
4 Print
Input "Press ENTER for Solution";L
GoTo BackSubstitution
Cls
Print "Solution:"
Print
For I = 1 To N
Print "X(", I, ") = ", X(I)
End
MatIn:
Cls
Print "Enter augmented matrix (";N;" x";N+1,")"
For I = 1 To N
For J = 1 To N+1
Print "A(";I;",";J;") = ";
Input A(I, J)
Next J
Next I
Cls
GoTo 1
PrintMatrix:
For I = 1 To N
For J = 1 To N+1
Print A(I, J),
Next J
Print
Next I
Print
If PMC <> 0 GoTo 4
Gauss:
For K = 1 To N
PIVOT = K
For I = K+1 To N
If Abs(A(I,K)) > Abs(A(PIVOT,K)) Then
PIVOT = I
EndIf
Next I
If PIVOT <> K Then
For J = K To N+1
TEMP = A(K,J)
A(K,J) = A(PIVOT,J)
A(PIVOT,J) = TEMP
Next J
EndIf
If A(K,K) = 0 Then
Print "ERROW: Matrix is singular."
Print "No unique solution." : End
EndIf
For I = K+1 To N
FACTOR = A(I,K)/A(K,K)
For J = K To N+1
A(I,J) = A(I,J) - FACTOR*A(K,J)
Next J
Next I
Next K
GoTo 3
BackSubstitution:
X(N) = A(N,N+1)/A(N,N)
For I = N-1 To 1 Step -1
SUM = 0
For J = I+1 To N
SUM = SUM + A(I,J)*X(J)
Next J
X(I) = (A(I,N+1) - SUM)/A(I,I)
Next I
Cls
Print "Solution:"
Print
For I = 1 To N
Print "X(";I;" )  = "; X(I)
Next I
Print
Print "1   Another Equations Set"
Print "2   GoTo TOOL KIT"
Input "3   END App";U
If U = 1 GoTo Sim
If U = 2 Then Run "TOOL.bas"
If U = 3 Then Cls : Clear : End
Cls : Clear : End