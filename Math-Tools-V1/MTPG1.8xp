ClrHome

0→Q

Disp "Math Tools V1         Pg:1"
Disp "1:Quadratic Solver"
Disp "2:Slope Solver"
Disp "3:Pythagorean Theroem"
Disp "4:3D Shape Surface Area"
Disp "5:Coordinate Geometry"
Disp "6:Area Finder"
Disp "7:Notes    |8:Quit"
Disp "9:Prev     |10:Next"

Input "Choice: ",Q

If 1>Q or Q>10:Then
Disp "Choose a Valid Option"
prgmMTPG1
End

If Q=8:Then
Stop
End

If Q=9:Then
prgmMTPG2
End

If Q=10:Then
prgmMTPG2
End

If Q=1:Then
ClrHome
Disp "Quadratic Solver Selected"
Prompt A,B,C,R
If A=0:Then:Disp "Not A Quadratic":Stop:End
If R<0:Then:Disp "Decimal Placement ≤ 0":Stop:End
((B^2)-4(A)C)→D
If D<0:Then
Disp "No Real Solutions"
Else
Disp "Solution(s) as a Decimal:"
Disp round((­B+{1,­1}*√(D))/(2A),R)
toString(round((­B+{1,­1}*√(D))/(2A),R))→Str1
Pause 
prgmMTPG1
End
End


If Q=2:Then
ClrHome
Disp "Slope Finder Selected"
Input "X1=?",W
Input "Y1=?",X
Input "X2=?",Y
Input "Y2=?",Z

If W=Y:Then
Disp "Slope is Undefined"
Else
Disp "Slope as Fraction*:"
Disp (X-Z)/(W-Y)Frac
Disp "*Note: Frac Func. May Not"
Disp "Always Work Reliably"
toString(((X-Z)/(W-Y)))→Str1
Pause 
prgmMTPG1
End
End


If Q=3:Then
ClrHome
Disp "Pythagorean Theroem"
Disp "Selected"
Disp " "
Disp "1:Find Missing Leg"
Disp "2:Find Hypotnuse"
Input "Choice: ",Q

If 1>Q or Q>2:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG1:End

If Q=1:Then
ClrHome
Prompt A,C
Disp "Missing Leg Length:"
Disp √((C^2)-(A^2))
toString(√((C^2)-(A^2)))→Str1
Else
ClrHome
Prompt A,B
Disp "Hypotnuse Length:"
Disp √((A^2)+(B^2))
toString(√((A^2)+(B^2)))→Str1
End
Pause 
prgmMTPG1
End


If Q=4:Then
ClrHome
0→R
Disp "Surface Area Selected"
Disp " "
Disp "Select a Shape:"
Disp "1:Sphere(T)"
Disp "2:Cube(T)"
Disp "3:Cone(T/L)"
Disp "4:Cylinder(T/L)"
Input "Choice: ",Q

If 1>Q or Q>4:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG1:End
End

If Q=1:Then:ClrHome:Prompt R
If R≤0:Then:Disp "Radius ≤ 0":Stop:End
Disp "Sphere Total: ",4πR^2
toString(4πR^2)→Str1
Pause 
prgmMTPG1
End

If Q=2:Then:ClrHome:Prompt S
If S≤0:Then:Disp "Side ≤ 0":Stop:End
Disp "Cube Total: ",6S^2
toString(6S^2)→Str1
Pause 
prgmMTPG1
End

If Q=3:Then:ClrHome:Prompt R,L
If R≤0 or L≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Cone Lateral:",π(R)L
Disp "Cone Total:",(π(R)L)+(π(R^2))
toString({(π(R)L)+(π(R^2)),π(R)L})→Str1
Pause 
prgmMTPG1
End

If Q=4:Then:ClrHome:Prompt R,H
If R≤0 or H≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Cylinder Lateral:",2π(R)H
Disp "Cylinder Total:",(2π(R)H)+(2π(R^2))
toString({(2π(R)H)+(2π(R^2)),2π(R)H})→Str1
Pause 
prgmMTPG1
End


If Q=5:Then:ClrHome
Disp "Coordinate Geometry"
Disp " "
Disp "Select Formula:"
Disp "1:Midpoint Formula"
Disp "2:Linear Equation(y=mx+b)"
Disp "3:Distance Formula"

Input "Choice: ",Q

If 1>Q or Q>3:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG1:End
End

If Q=1:Then:ClrHome
Disp "Midpoint Formula Selected"
Input "X1=?",W
Input "Y1=?",X
Input "X2=?",Y
Input "Y2=?",Z
Prompt R
Disp "Midpoint of given points:"
Disp "X:"+toString(round((W+Y)/(2),R))
Disp "Y:"+toString(round((X+Z)/(2),R))
Disp "Cordinate:"
Disp "("+toString(round((W+Y)/(2),R))+","+toString(round((X+Z)/(2),R))+")"
toString({round((W+Y)/(2),R),round((X+Z)/(2),R)})→Str1
Pause 
prgmMTPG1
End


If Q=2:Then:ClrHome
Disp "Linear Equation(y=mx+b)"
Disp "Selected"
Input "X1=?",W
Input "Y1=?",X
Input "X2=?",Y
Input "Y2=?",Z
If W=Y:Then:"Undefined"→Str1
Disp "Equation:"
Disp "y="+toString(mean({X,Z}))
Disp "Raw Values:"
Disp "m/k:"+Str1
Disp "b:"+toString(mean({X,Z}))
toString(mean({X,Z}))→Str1
Pause 
prgmMTPG1
Else
toString((X-Z)/(W-Y))→Str1
Disp "Equation:"
If (­(expr(Str1)W)+X)<0:Then
Disp "y="+Str1+"x-"+toString(abs(­(expr(Str1)W)+X))
Disp "Raw Values:"
Disp "m/k:"+Str1
Disp "b:"+toString(­(expr(Str1)W)+X)
toString({(X-Z)/(W-Y),­((X-Z)/(W-Y)*W)+X})→Str1
Else:If (­(expr(Str1)W)+X)>0:Then
Disp "y="+Str1+"x+"+toString(­(expr(Str1)W)+X)
Disp "Raw Values:"
Disp "m/k:"+Str1
Disp "b:"+toString(­(expr(Str1)W)+X)
toString({(X-Z)/(W-Y),­((X-Z)/(W-Y)*W)+X})→Str1
Else:If (­(expr(Str1)W)+X)=0:Then
Disp "y="+Str1+"x"
Disp "Raw Values:"
Disp "m/k:"+Str1
Disp "b:"+toString(­(expr(Str1)W)+X)
toString({(X-Z)/(W-Y),­((X-Z)/(W-Y)*W)+X})→Str1
End
End
End
End
Pause 
prgmMTPG1
End

If Q=3:Then:ClrHome
Disp "Distance Formula Selected"
Disp "Selected"
Input "X1=?",W
Input "Y1=?",X
Input "X2=?",Y
Input "Y2=?",Z
Disp "Distance:"
Disp √((Y-W)^2+(Z-X)^2)
Disp "Horizontal Distance:"
Disp abs(Y-W)
Disp "Vertical Distance:"
Disp abs(Z-X)
toString(√((Y-W)^2+(Z-X)^2))→Str1
Pause 
prgmMTPG1
End


If Q=6:Then:ClrHome
Disp "Area Finder Selected"
Disp "Select a Shape:"
Disp "1:Parallelogram"
Disp "2:Kite/Rhombi"
Disp "3:Trapezoid"
Disp "4:Circle"
Disp "5:Triangle(General)"
Disp "6:Triangle(Equilateral)"
Input "Choice: ",Q

If 1>Q or Q>6:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG1:End

If Q=1:Then:ClrHome
Disp "Parallelogram Selected"
Prompt L,W
If L≤0 or W≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Area:"+toString(LW)
toString(LW)→Str1
Pause 
prgmMTPG1
End

If Q=2:Then:ClrHome
Disp "Kite/Rhombi Selected"
Input "D1=?",L
Input "D2=?",W
If L≤0 or W≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Kite/Rhombi Area:"+toString((1/2)LW)
toString((1/2)LW)→Str1
Pause
prgmMTPG1
End

If Q=3:Then:ClrHome
Disp "Trapezoid Selected"
Input "B1=?",L
Input "B2=?",W
Prompt H
If L≤0 or W≤0 or H≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Trapezoid Area:"+toString(((L+W)/2)H)
toString(((L+W)/2)H)→Str1
Pause 
prgmMTPG1
End

If Q=4:Then:ClrHome
Disp "Cricle Selected"
Prompt R
If R≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Circle Area:"+toString(πR^2)
toString(πR^2)→Str1
Pause
prmgMTPG1
End

If Q=5:Then:ClrHome
Disp "Triangle(General) Selected"
Prompt B,H
If B≤0 or H≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Triangle Area:"+toString((BH)/2)
toString((BH)/2)→Str1
Pause 
prgmMTP2
End

If Q=6:Then:ClrHome
Disp "Triangle(Equilateral)"
Disp "Selected"
Prompt S
If S≤0:Then:Disp "Invalid Dimen":Pause :prgmMTPG1:End
Disp "Triangle Area:"+toString(((√(3))/(4))S^2)
toString(((√(3))/(4))S^2)→Str1
Pause 
prgmMTPG1
End

End


If Q=7:Then

1→S

While Q=7 and (S=1 or S=2)

If S=1:Then:ClrHome
Disp "Law of Exponents      Pg:1"
Disp "a^m*a^n=a^(m+n)"
Disp "a^m/a^n=a^(m-n)"
Disp "(a^m)^n=a^(mn)"
Disp "(ab)^n=(a^n)(b^n)"
Disp "a^0=1(a≠0)"
End

If S=2:Then:ClrHome
Disp "Trig Ratios/Cos Law   Pg:2"
Disp "Sin(θ)=opp/hyp"
Disp "Cos(θ)=adj/hyp"
Disp "Tan(θ)=opp/adj"
Disp "c^2=a^2+b^2-2abCos(C)"
Disp "Cos(C)=a^2+b^2-c^2/2ab"
End

Disp "Press <- To go Back"
Disp "Press -> To Cotinue"
Disp "Press Clear To Quit"

0→K
Repeat K=24 or K=26 or K=45
getKey→K
End

If K=26:Then:S+1→S:End
If K=24:Then:S-1→S:End
If K=45:Then:prgmMTPG1:End

If S<1:Then:2→S:End
If S>2:Then:1→S:End

End

End
