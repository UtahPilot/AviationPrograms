Accel: Cls
Print "----------------------------------------"
Print "----------    ACCELERATION    ----------"
Print "----------------------------------------"
Print
Print "1 Time / Accel / Init Vel"
Print "2 Time / Accel / Fina Vel"
Print "3 Accel / Fina Vel / Dist"
Print "4 Accel / Fina Vel / Init Vel"
Print "5 Dist / Time / Accel"
Print "6 Dist / Time / Fina Vel"
Print "7 Init Vel / Dist / Time"
Print "8 Init Vel / Dist / Accel"
Print "9 Fina Vel / Init Vel / Dist"
Print "10 Fina Vel / Init Vel / Time"
Print
Print "11 GoTo TOOL KIT"
Print "12 END App"
Print
Print
Input "Enter Given Data Set Number";N
Cls
If N=1 GoTo 1
If N=2 GoTo 2
If N=3 GoTo 3
If N=4 GoTo 4
If N=5 GoTo 5
If N=6 GoTo 6
If N=7 GoTo 7
If N=8 GoTo 8
If N=9 GoTo 9
If N=10 GoTo 10
If N=11 Then Run "TOOL.bas"
If N=12 Then Cls : End
Cls : End
1 Title
Input "Time:             ";T
Input "Acceleration:     ";A
Input "Initial Velocity: ";I
Print "Distance =         "; I*T+A*T^2/2
Print "Final Velocity =   "; I+A*T
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
2 Title
Input "Time:             ";T
Input "Acceleration:     ";A
Input "Final Velocity:   ";F
Print "Distance =         "; F*T-A*T^2/2
Print "Initial Velocity = "; F-A*T
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
3 Title
Input "Acceleration:     ";A
Input "Final Velocity:   ";F
Input "Distance:         ";D
Print "Time =             ";(F-Sqr(F^2-2*A*D))/A
Print "Initial Velocity = ";Sqr(F^2-2*A*D)
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
4 Titls
Input "Acceleration:     ";A
Input "Final Velocity:   ";F
Input "Initial Velocy:   ";I
Print "Time =             ";(F-I)/A
Print "Distance =         ";(f^2-I^2)/(2*A)
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
5 Title
Input "Distance:         ";D
Input "Time:             ";T
Input "Acceleration:     ";A
Print "Initial Velocity = ";D/T-A*T/2
Print "Final Velocity =   ";D/T+A*T/2
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
6 Title
Input "Distance:         ";D
Input "Time:             ";T
Input "Final Velocity:   ";F
Print "Initial Velocity = ";2*D/T-F
Print "Acceleration =     ";(F*T-D)*2/T^2
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
7 Title
Input "Initial Velocity: ";I
Input "Distance:         ";D
Input "Time:             ";T
Print "Final Velocity =   ";2*D/T-I
Print "Acceleration =     ";(D-I*T)*2/T^2
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
8 Title
Input "Initial Velocity: ";I
Input "Distance:         ";D
Input "Acceleration:     ";A
Print "Final Velocity =   ";Sqr(I^2+2*A*D)
Print "Time =             ";(Sqr(I^2+2*A*D)-I)/A
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
9 Title
Input "Final Velocity:   ";F
Input "Initial Velocity: ";I
Input "Distance:         ";D
Print "Acceleration =     ";(F^2-I^2)/(2*D)
Print "Time =             ";2*D/(F+I)
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
10 Title
Input "Final Velocity:   ";F
Input "Initial Velocity: ";I
Input "Time:             ";T
Print "Acceleration =     ";(F-I)/T
Print "Distance =         ";T*(F+I)/2
Print
Input "Press ENTER for Main Menu";J
GoTo Accel
Sub Title
Print "----------------------------------------"
Print "----------    ACCELERATION    ----------"
Print "----------------------------------------"
Print
End Sub
End