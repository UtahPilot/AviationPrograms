Pend: Cls
Print "----------------------------------------"
Print "--------   Compound Pendulum   ---------"
Print "----------------------------------------"
Print
Print "1  English System"
Print "2  Metric System"
Print "3  GoTo TOOL KIT"
Print "4  END APP"
Print
Input "Enter System Number ";SYS
If SYS = 1 GoTo 1
If SYS = 2 GoTo 2
If SYS = 3 Then Run "TOOL.bas"
If SYS = 4 Then Cls : End
Cls : End
1 Cls
Print "----------------------------------------"
Print "--------   Compound Pendulum   ---------"
Print "----------------------------------------"
Print
Print "English System"
Print
Input "Enter Mass (lbs)    ";M
Input "Enter Height (Ft)   ";H
Input "Enter Time (Sec)    ";T
A = M*32.174*H*T^2/(4*Pi^2)
Print
Print "I (Lbs-Ft^2)      =  ";A
Print "Io (Lbs-Ft^2)     =  ";A-M*H^2
Print
Input "Press ENTER for Main Menu";L
GoTo Pend
2 Cls
Print "----------------------------------------"
Print "--------   Compound Pendulum   ---------"
Print "----------------------------------------"
Print
Print "Metric System"
Print
Input "Enter Mass (Newton)  ";M
Input "Enter Height (Meter) ";H
Input "Enter Time (Sec)     ";T
A = M*9.81*H*T^2/(4*Pi^2)
Print
Print "I (N-M^2)          =  ";A
Print "Io (N-M^2)         =  ";A-M*H^2
Print
Input "Press ENTER for Main Menu";L
GoTo Pend