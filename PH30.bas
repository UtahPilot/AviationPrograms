Temp: Cls
Print "---------------------------------------"
Print "-----   Temperature Conversion   ------"
Print "---------------------------------------"
Print
Print "1  Fahrenheit ---> Centigrade"
Print "2  Centigrade ---> Fahrenheit"
Print "3  Wind Chill Factor (Fahrenheit)"
Print "4  GoTo TOOL KIT"
Print "5  END APP"
Print
Input "Enter Choice Number ";L
Print
If L = 1 GoTo 1
If L = 2 GoTo 2
If L = 3 GoTo 3
If L = 4 Then Run "TOOL.bas"
If L = 5 Then Cls : End
Cls : End
1 Print "Conversion (F>C) "
Input "Fahrenheit (Degree) ";F
Print "Centigrade (Degree) ";Val(Str$((F-32)*5/9,15,1))
Print
Input "Press ENTER to continue";L
GoTo Temp
2 Print "Conversion (C>F) "
Input "Centigrade (Degree) ";C
Print " Fahrenheit (Degree) ";Val(Str$(C*9/5+32,15,1))
Print
Input "Press ENTER to Continue";L
GoTo Temp
3 Print "Wind Chill"
Input "Degrees in Fahrenheit ";F
Input "Wind Speed (mph)      ";S
Print "Wind Chill Temp (Deg) ";Val(Str$((S^0.16)*F*0.4275-(S^0.16)*35.75+F*0.6215+35.74,15,1))
Print
Input "Press ENTER to Continue";L
GoTo Temp
Cls : End