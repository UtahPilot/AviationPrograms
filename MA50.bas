Option EXPLICIT
Option DEFAULT NONE
Dim Float x_min, x_max, y_min, y_max
Dim Float x_scale, y_scale
Dim String eq$, L
Dim Float x, y, screen_x, screen_y, old_y
Dim Integer p_x, I
Dim Integer first_point

10 Do
Cls
setup_screen
get_equation
If eq$ = "" Then Run "TOOL"
plot_function
Input L
If L = "" Then GoTo 10
Loop

Sub setup_screen
Cls
x_min = -10
x_max = 10
y_min = -10
y_max = 10
x_scale = (318) / (x_max - x_min)
y_scale = (318) / (y_max - y_min)
LINE 0, 160, 319, 160
LINE 160, 0, 160, 319
For I = 32 To 288 Step 32
Line I, 156, I, 164
Line 156, I, 164, I
Next I
End Sub

Sub get_equation
Print @(0,0)
Input "Y = ", eq$
eq$ = LCase$(eq$)
End Sub

Sub plot_function
Color rgb(RED)
first_point = 1
For p_x = 1 To 319
x = x_min + p_x / x_scale
y = Eval(eq$)
screen_y = 160 - (y * y_scale)
screen_x = p_x
If first_point Then
first_point = 0
PIXEL screen_x, screen_y
Else
LINE p_x-1, old_y, p_x, screen_y
End If
old_y = screen_y
Next p_x
Color rgb(GREEN)
End Sub