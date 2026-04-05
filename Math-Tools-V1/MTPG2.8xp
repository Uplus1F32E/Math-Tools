ClrHome
0→K
0→Q

Disp "Math Tools V1         Pg:2"
Disp "1:Heron's Formula"
Disp "2:Law of Cosines"
Disp "3:Law of Sines
Disp "4:Euler's Polyhedral Form."
Disp "5:Netwon's Laws"
Disp "6:Ohm's Law"
Disp "7:Clock    |8:Quit"
Disp "9:Prev     |10:Next"

Input "Choice: ",Q


If Q<1 or Q>10:Then
Disp "Choose a Valid Option"
prgmMTPG2
End


If Q=10:Then
prgmMTPG1
End


If Q=9:Then
prgmMTPG1
End


If Q=8:Then
Stop
End


If Q=7:Then:ClrHome

Repeat K=45
Wait 1
0→K
ClrHome
getDate→L₂
getTime→L₁
getKey→K
Disp " Current Calculator Time:"
Disp "         "+toString(L₁(1))+":"+toString(L₁(2))+":"+toString(L₁(3))
Disp " "
Disp " "
Disp " Current Calculator Date:"
Disp "        "+toString(L₂(2))+"/"+toString(L₂(3))+"/"+toString(L₂(1))
Disp " "
Disp " "
Disp "   Press Clear To Quit"
End

If K=45:Then:prgmMTPG2:End

End


If Q=6:Then:ClrHome
Disp "Ohm's Law Selected"
Disp ""
Disp "Choose a Formula:"
Disp "1:Voltage(IR)"
Disp "2:Current(V/R)"
Disp "3:Resistance(V/I)"

Input "Choice: ",Q

If Q<1 or Q>3:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG2:End

If Q=1:Then:ClrHome
Input "I=?",L
Input "R=?",R
Disp "Voltage(V):"+toString(LR)
toString(LR)→Str1
Pause 
prgmMTPG2
End

If Q=2:Then:ClrHome
Input "V=?",W
Input "R=?",R
If R=0:Then:Disp "Invalid Parameter":Stop:End
Disp "Current(A):"+toString(W/R)
toString(W/R)→Str1
Pause 
prgmMTPG2
End

If Q=3:Then:ClrHome
Input "V=?",W
Input "I=?",L
If L=0:Then:Disp "Invalid Parameter":Stop:End
Disp "Resistance(Ω):"+toString(W/L)
toString(W/L)→Str1
Pause 
prgmMTPG2
End

End


If Q=5:Then:ClrHome
Disp "Newton's Law Selected"
Disp " "
Disp "Choose a Formula:"
Disp "1:F=ma"
Disp "2:m=F/a"
Disp "3:a=F/m"
Disp "4:Weight Force(W=mg)"
Disp "5:Universal Gravitation"
Disp "  Law (F=G(m1m2/r^2))"

Input "Choice: ",Q

If Q<1 or Q>5:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG2:End

If Q=1:Then:ClrHome
Input "a=?",A
Input "m=?",L
Disp "Force(N):"+toString(AL)
toString(AL)→Str1
Pause 
prgmMTPG2
End

If Q=2:Then:ClrHome
Input "F=?",D
Input "a=?",A
If A=0:Then:Disp "Invalid Parameter":Pause :prgmMTPG2:End
Disp "Mass(kg):"+toString(D/A)
toString(D/A)→Str1
Pause 
prgmMTPG2
End

If Q=3:Then:ClrHome
Input "F=?",D
Input "m=?",L
If L=0:Then:Disp "Invalid Parameter":Pause :prgmMTPG2:End
Disp "Acceleration(m/s^2):"+toString(D/L)
toString(D/L)→Str1
Pause 
prgmMTPG2
End

If Q=4:Then:ClrHome
Disp "Gravity(g) on Earth is"
Disp "aprx. 9.81"
Input "m=?",L
Input "g=",W
Disp "Weight Force(N):"+toString(LW)
toString(LW)→Str1
Pause 
prgmMTPG2
End

If Q=5:Then:ClrHome
Input "r=?",R
Input "m1=?",L
Input "m2=?",W
If R≤0:Then:Disp "Invalid Parameter":Pause :prgmMTPG2:End
Disp "Gravitational Force(N):"
Disp toString((6.674*10^­11)((LW)/(R^2)))
toString((6.674*10^­11)((LW)/(R^2)))→Str1
Pause 
prgmMTPG2
End

End


If Q=4:Then:ClrHome
Disp "Euler's Polyhedral"
Disp "Formula Selected"
Disp " "
Disp "Selected Polyhedral"
Disp "Type:"
Disp "1:Simple Convex"
Disp "2:Enclosed Non-Convex"
Input "Choice: ",Q

If Q<1 or Q>2:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG2:End

If Q=1:Then:ClrHome
Input "V=?",B
Input "E=?",D
Input "F=?",R
If (B-D+R)=2:Then:Disp "Shape is a Simple Convex","Polyhedral":Else
Disp "Shape is Not a Simple","Polyhedral":End:Pause :prgmMTPG2
End

If Q=2:Then:ClrHome
Input "V=?",B
Input "E=?",D
Input "F=?",R
Input "g=?",W
If (B-D+R)=(2-2W):Then:Disp "Shape is an Enclosed","Non-Convex Polyhedral":Else
Disp "Shape is Not an Enclosed","Non-Convex Polyhedral":End:Pause :prgmMTPG2
End

End


If Q=3:Then:ClrHome
Disp "Law of Sines Selected"
Disp " "
Disp "Select Missing Side/Angle:"
Disp "1:∠α"
Disp "2:∠β"
Disp "3:Side A"
Disp "4:Side B"
Input "Choice: ",Q

If Q<1 or Q>4:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG2:End

If Q=1:Then:ClrHome
Prompt A,B
Input "β=?",C

If A=0:Then:Disp "Invalid Parameter":Pause :prgmMTPG2:End

(Asin(C)/B)→D
If D>1:Then
Disp "No Solution(s)"
Else
sin(D)→S
Disp "∠α:"+toString(S)
toString(S)→Str1
If B<A:Then:
Disp "   "+toString(180-S)
toString({S,180-S})→Str1
End
End
Pause 
prgmMTPG2
End


If Q=2:Then:ClrHome
Prompt A,B
Input "α=?",C

If B=0:Then:Disp "Invalid Parameter":Pause :prgmMTPG2:End

(Bsin(C)/A)→D
If D>1:Then
Disp "No Solution(s)"
Else
sin(D)→S
Disp "∠β:"+toString(S)
toString(S)→Str1
If A<B:Then:
Disp "   "+toString(180-S)
toString({S,180-S})→Str1
End
End
Pause 
prgmMTPG2
End

If Q=3:Then:ClrHome
Input "B=?",B
Input "α=?",A
Input "β=?",C
(Bsin(A))/(sin(C))→S
If S<1:Then:Disp "Invalid Triangle":Pause :prgmMTPG2:End
Disp "Side A:"+toString(S)
toString(S)→Str1
Pause 
prgmMTPG2
End

If Q=4:Then:ClrHome
Input "A=?",A
Input "α=?",B
Input "β=?",C
(Asin(C))/(sin(B))→S
Disp "Side B:"+toString(S)
toString(S)→Str1
Pause 
prgmMTPG2
End

End


If Q=2:Then:ClrHome
Disp "Law of Cosines Selected"
Disp " "
Disp "Select Missing Side/Angle:"
Disp "1:Side"
Disp "2:Angle"

Input "Choice: ",Q

If Q<1 or Q>2:Then:Disp "Choose a Valid Mode":Pause :prgmMTPG2:End

If Q=1:Then:ClrHome
Prompt A,B
Input "γ=?",C
If A≤0 or B≤0:Then:Disp "Invalid Side or Angle","Measurement":Pause :prgmMTPG2:End
(A^2+B^2-2ABcos(C))→S
Disp "Missing Side Length:",toString(√(S)
toString(√(S))→Str1
Pause 
prgmMTPG2
End

If Q=2:Then:ClrHome
Prompt A,B,C
If A≤0 or B≤0 or C≤0:Then:Disp "Invalid Side","Measurement":Pause :prgmMTPG2:End
((A^2+B^2-C^2)/(2AB))→S
Disp "Missing Angle Measure:",toString(cos(S))
toString(cos(S))→Str1
Pause 
prgmMTPG2
End

End


If Q=1:Then:ClrHome
Disp "Heron's Formula Selected"
Prompt A,B,C
If A≤0 or B≤0 or C≤0:Then:Disp "Invalid Side Measurement":Pause :prgmMTPG2:Else
If A+B≤C or A+C≤B or B+C≤A:Then:Disp "Invalid Tiangle":Pause :prgmMTPG2:End
((A+B+C)/(2))→S
Disp "Area:"+toString(√(S(S-A)(S-B)(S-C)))
Disp "Perimeter:"+toString(2S)
Disp "Semi-Perimeter:"+toString(S)
toString({√(S(S-A)(S-B)(S-C)),2S,S})→Str1
Pause 
prgmMTPG2
End
