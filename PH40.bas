Traj: Cls
Print "----------------------------------------"
Print "------------   Trajectory   ------------"
Print "----------------------------------------"
Print
Input "Enter Muzle Velocity (ft/sec)";V
Input "Enter Angle from Horizon (deg)";A
Print
HD = 2*V^2*Sin(Rad(A))*Cos(Rad(A))/32.17
Print "Horizontal Distance (ft)    ";Val(Str$(HD,15,2))
Print "Horizontal Distance (miles) ";Val(Str$(HD/5289,15,2))
Print "Maximum Altitude (ft)       ";Val(Str$(V^2*Sin(Rad(A))^2/64.34,15,2))
Print "Flight Duration (sec)       ";Val(Str$(V*Sin(Rad(A))/16.09,15,2))
Print
Print "1  Make another calculation"
Print "2  GoTo TOOL KIT"
Print "3  END APP"
Print
Input "Enter Choice Number";L
If L = 1 GoTo Traj
If L = 2 Then Run "TOOL.bas"
If L = 3 Then Cls : End
Cls : End