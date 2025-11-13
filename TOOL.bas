Tool: Cls : Clear
Print "----------------------------------------"
Print "--------   TOOL KIT DIRECTORY   --------"
Print "----------------------------------------"
Print
Print " 1  Aviation"
Print " 2  Engineering"
Print " 3  Geometry"
Print " 4  Math"
Print " 5  Misc"
Print " 6  Physics"
Print
Print " Enter Directory Number or"
Input " Enter 9 To Exit Tool Kit";L1
If L1 = 1 GoTo AAA
If L1 = 2 GoTo BBB
If L1 = 3 GoTo CCC
If L1 = 4 GoTo DDD
If L1 = 5 GoTo EEE
If L1 = 6 GoTo FFF
If L1 = 9 Then Cls : New : End
Cls : New : End
AAA: Cls
Print "----------------------------------------"
Print "-------------   Aviation   -------------"
Print "----------------------------------------"
Print
Print " 1  Aircraft Performance"
Print " 2  Airport Navigation"
Print " 3  Dead Reckoning - Course & Distance"
Print " 4  Dead Reckoning - Lat & Long"
Print " 5  Sun Rise / Sun Set"
Print
Print " Enter App Number or"
Input " Enter 9 for Directory Menu";L1
If L1 = 1 Then Run "AV10"
If L1 = 2 Then Run "AV20"
If L1 = 3 Then Run "AV30"
If L1 = 4 Then Run "AV40"
If L1 = 5 Then Run "AV50"
If L1 = 9 GoTo Tool
BBB: Cls
Print "----------------------------------------"
Print "-----------   Engineering   ------------"
Print "----------------------------------------"
Print
Print " 1  Catenary Cable"
Print " 2  Mass Inertia"
Print " 3  Vectors"
Print
Print " Enter App Number or"
Input " Enter 9 for Directory Menu";L1
If L1 = 1 Then Run "EN10"
If L1 = 2 Then Run "EN20"
If L1 = 3 Then Run "EN30"
If L1 = 9 GoTo Tool
CCC: Cls
Print "----------------------------------------"
Print "-------------   Geometry   -------------"
Print "----------------------------------------"
Print
Print " 1  Analytic Geometry"
Print " 2  Area of Irregular Shapes"
Print " 3  Belt Length"
Print " 4  Triangles"
Print
Print " Enter App Number or"
Input " Enter 9 for Directory Menu";L1
If L1 = 1 Then Run "GE10"
If L1 = 2 Then Run "GE20"
If L1 = 3 Then Run "GE30"
If L1 = 4 Then Run "GE40"
If L1 = 9 GoTo Tool
DDD: Cls
Print "----------------------------------------"
Print "---------------   Math   ---------------"
Print "----------------------------------------"
Print
Print " 1  Linear Interpolation"
Print " 2  Regression"
Print " 3  Simultaneous Equations"
Print " 4  Statistics"
Print " 5  Function Plotter"
Print
Print " Enter App Number or"
Input " Enter 9 for Directory Menu";L1
If L1 = 1 Then Run "MA10"
If L1 = 2 Then Run "MA20"
If L1 = 3 Then Run "MA30"
If L1 = 4 Then Run "MA40"
If L1 = 5 Then Run "MA50"
If L1 = 9 GoTo Tool
EEE: Cls
Print "----------------------------------------"
Print "---------------   Misc   ---------------"
Print "----------------------------------------"
Print
Print " 1  True Value of Money (TVM)"
Print " 2  MFBV.bas"
Print
Print " Enter App Number or"
Input " Enter 9 for Directory Menu";L1
If L1 = 1 Then Run "MI10"
If L1 = 2 Then Run "MFBV"
If L1 = 9 GoTo Tool
FFF: Cls
Print "----------------------------------------"
Print "-------------   Physics   --------------"
Print "----------------------------------------"
Print
Print " 1  Acceleration"
Print " 2  Compound Pendulum"
Print " 3  Temperature Converter"
Print " 4  Trajectory"
Print
Print " Enter App Number or"
Input " Enter 9 for Directory Menu";L1
If L1 = 1 Then Run "PH10"
If L1 = 2 Then Run "PH20"
If L1 = 3 Then Run "PH30"
If L1 = 4 Then Run "PH40"
If L1 = 9 GoTo Tool
Cls : New : End