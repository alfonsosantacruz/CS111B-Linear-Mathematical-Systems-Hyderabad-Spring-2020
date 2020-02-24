︠386c70e0-9add-4c76-ba60-539730e531cfs︠
### Problem 1.1 (a)
M = matrix([[1, 1 , 1 , 3],
    [1 , 3 , -1 , 1],
    [3,  5 , 4 , 10]])
show(M.rref())
︡ec80ef9d-ddb4-4d07-97d4-9bc1e0e210b3︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 2 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠65055876-9e02-4bcf-ae91-a57b30a92d7bs︠
### Problem 1.1 (b)
B = matrix([[2, -4, 8, 4],
    [1, -1, 1, 4],
    [3, -4, 6, 7]])
show(B.rref())
︡ee9586d0-8d43-4e9e-b66f-27c3c5633ef8︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; -2 &amp; 0 \\\\\n0 &amp; 1 &amp; -3 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠70134f48-c62b-4d86-8b77-d9dfc83cd870s︠
### Probelm 1.1 (c)
C = matrix([[2, 2, 6, 2],
    [6, 9, -3, 9],
    [10, 14, 2, 14]])
show(C.rref())

B = matrix([[2, 2, 6],
    [6, 9, -3],
    [10, 14, 2]])


B.solve_right(vector([2, 9 , 14]))
︡43d954cc-1c65-4443-b513-bbb354c4b871︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 10 &amp; 0 \\\\\n0 &amp; 1 &amp; -7 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$</div>"}︡{"stdout":"(0, 1, 0)\n"}︡{"done":true}
︠a297508e-fbad-42f1-9d44-f213b265826as︠
### Problem 1.2
a,b,c,d = var('a,b,c,d')
## No solution (absurd) when c = 1 and d = 0
### Infinetely many solutions when c = 0 and d = 0
d = 0
H = matrix([[1, 2, 3, a],
    [0, 4, 5, b],
    [0, 0, d, c]])
show(H)
show(H.rref())
︡052ce54e-1484-46e4-8d4e-784f5a6fb108︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 2 &amp; 3 &amp; a \\\\\n0 &amp; 4 &amp; 5 &amp; b \\\\\n0 &amp; 0 &amp; 0 &amp; c\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; \\frac{1}{2} &amp; 0 \\\\\n0 &amp; 1 &amp; \\frac{5}{4} &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠f9797502-e08a-458e-9dc0-d39d3cbff6bcs︠
### Problem 2.1 (a)
A = matrix(QQ, [[1, 1 , 1 , 3],
    [1 , 3 , -1 , 1],
    [3,  5 , 4 , 10]])
## Add row 1 to row 2 leaving row 1 intact
E = matrix(QQ, [[1,0,0],
           [1,1,0],
           [0,0,1]])
## Divide the resultant row 2 by 2
E_1 = matrix(QQ, [[1,0,0],
           [0,1/2,0],
           [0,0,1]])
## multiply row 1 by 4 and substract row 3 from it leaving row 3 intact
E_2 = matrix(QQ, [[4,0,-1],
           [0,1,0],
           [0,0,1]])
## subtract row 1 from row 2 leaving row 1 intact
E_3 = matrix(QQ, [[1,0,0],
           [-1,1,0],
           [0,0,1]])
## divides the resultant row 2 by 3
E_4 = matrix(QQ, [[1,0,0],
           [0,1/3,0],
           [0,0,1]])
## adds row 2 to ro2 1 leaving row 2 intact
E_5 = matrix(QQ, [[1,1,0],
           [0,1,0],
           [0,0,1]])
## subtract row 1 three times from row 3 leaving row 1 intact
E_6 = matrix(QQ, [[1,0,0],
           [0,1,0],
           [-3,0,1]])
## subtract row 2 from row 3 five times leaving row 2 intact
E_7 = matrix(QQ, [[1,0,0],
           [0,1,0],
           [0,-5,1]])
## divides the whole row 3 by 4
E_8 = matrix(QQ, [[1,0,0],
           [0,1,0],
           [0,0,1/4]])

show(A)
show(E_8*E_7*E_6*E_5*E_4*E_3*E_2*E_1*E*A)
K = E_8*E_7*E_6*E_5*E_4*E_3*E_2*E_1*E
show(K)
show(K*A)
︡13be4bd2-b944-4afd-8990-c47e1feef51e︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 1 &amp; 1 &amp; 3 \\\\\n1 &amp; 3 &amp; -1 &amp; 1 \\\\\n3 &amp; 5 &amp; 4 &amp; 10\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 2 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n\\frac{17}{6} &amp; \\frac{1}{6} &amp; -\\frac{2}{3} \\\\\n-\\frac{7}{6} &amp; \\frac{1}{6} &amp; \\frac{1}{3} \\\\\n-\\frac{2}{3} &amp; -\\frac{1}{3} &amp; \\frac{1}{3}\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 2 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠456e66cf-34ef-4a2d-916b-efc777ba8a40s︠
### Problem 2.1 (b)
B = matrix([[2, -4, 8, 4],
    [1, -1, 1, 4],
    [3, -4, 6, 7]])
E = matrix(QQ, [[1/2,0,0],
           [0,1,0],
           [0,0,1]])
E_1 = matrix(QQ, [[1,0,0],
           [0,1,0],
           [-1,-2,1]])
E_2 = matrix(QQ, [[1,0,0],
           [-1,1,1],
           [0,0,1]])
E_3 = matrix(QQ, [[1,2,0],
           [0,1,0],
           [0,0,1]])

show(B)
show(E_3*E_2*E_1*E*B)
K = E_3*E_2*E_1*E
show(K)
show(K*B)
︡79e095bc-440f-405a-b2a5-c814f0211dad︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n2 &amp; -4 &amp; 8 &amp; 4 \\\\\n1 &amp; -1 &amp; 1 &amp; 4 \\\\\n3 &amp; -4 &amp; 6 &amp; 7\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; -2 &amp; 0 \\\\\n0 &amp; 1 &amp; -3 &amp; -1 \\\\\n0 &amp; 0 &amp; 0 &amp; -3\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n-\\frac{3}{2} &amp; -2 &amp; 2 \\\\\n-1 &amp; -1 &amp; 1 \\\\\n-\\frac{1}{2} &amp; -2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; -2 &amp; 0 \\\\\n0 &amp; 1 &amp; -3 &amp; -1 \\\\\n0 &amp; 0 &amp; 0 &amp; -3\n\\end{array}\\right)$</div>"}︡{"done":true}
︠e8313716-907c-41ca-a688-24ef0e365327s︠
### Problem 2.1 (c)
C = matrix([[2, 2, 6, 2],
    [6, 9, -3, 9],
    [10, 14, 2, 14]])
E = matrix(QQ, [[1/2,0,0],
           [0,1/3,0],
           [0,0,1/2]])
E_1 = matrix(QQ, [[1,0,0],
           [0,1,0],
           [-1,-2,1]])
E_2 = matrix(QQ, [[1,0,0],
           [-2,1,0],
           [0,0,1]])
E_3 = matrix(QQ, [[1,-1,0],
           [0,1,0],
           [0,0,1]])

show(C)
show(E_3*E_2*E_1*E*C)
K = E_3*E_2*E_1*E
show(K)
show(K*C)
︡f3830278-3341-424e-b4bf-124990e27e0a︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n2 &amp; 2 &amp; 6 &amp; 2 \\\\\n6 &amp; 9 &amp; -3 &amp; 9 \\\\\n10 &amp; 14 &amp; 2 &amp; 14\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 10 &amp; 0 \\\\\n0 &amp; 1 &amp; -7 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n\\frac{3}{2} &amp; -\\frac{1}{3} &amp; 0 \\\\\n-1 &amp; \\frac{1}{3} &amp; 0 \\\\\n-\\frac{1}{2} &amp; -\\frac{2}{3} &amp; \\frac{1}{2}\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 10 &amp; 0 \\\\\n0 &amp; 1 &amp; -7 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$</div>"}︡{"done":true}
︠64d4bd94-e179-441f-bb13-5d2054124d40s︠
### Problem 2.1 (a)
A = matrix(QQ, [[1, 1 , 1],
    [1 , 3 , -1],
    [3,  5 , 4,]])
A.det()
show(A.inverse())
︡53a46b77-cd6d-4e30-a27a-01427f00bf9c︡{"stdout":"6\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n\\frac{17}{6} &amp; \\frac{1}{6} &amp; -\\frac{2}{3} \\\\\n-\\frac{7}{6} &amp; \\frac{1}{6} &amp; \\frac{1}{3} \\\\\n-\\frac{2}{3} &amp; -\\frac{1}{3} &amp; \\frac{1}{3}\n\\end{array}\\right)$</div>"}︡{"done":true}
︠db22f3aa-114b-4780-9275-2ddca0d7f8e1s︠
### Problem 2.1 (b)
B = matrix([[2, -4, 8],
    [1, -1, 1],
    [3, -4, 6]])
B.det()
︡7a4c3c62-2c58-4d7d-a7f2-79a2e29f1fd6︡{"stdout":"0\n"}︡{"done":true}
︠300a8fe9-461f-45bd-871f-707db6ebcc15s︠
### Problem 2.1 (c)
C = matrix([[2, 2, 6],
    [6, 9, -3],
    [10, 14, 2]])
C.det()
︡bf05898c-c8e1-4aa0-80fd-a7205bbc6450︡{"stdout":"0\n"}︡{"done":true}
︠1ac4a37b-4e1e-4d6e-8ed7-97420d5a99f8s︠
### Problem 2.2 (a)
X = matrix([[0,1],
           [1,0]])

Y = matrix([[-1,0],
           [0,1]])

show(X*Y)
show(-Y*X)


### Problem 2.2 (a)

a,b,c,d,e,f,g,h = var('a,b,c,d,e,f,g,h')

X = matrix([[a,b],
           [c,d]])

Y = matrix([[e,f],
           [g,h]])

show(X*Y)
show(-Y*X)
︡996ed886-6a98-4eb0-81e2-e080ad6443d0︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n0 &amp; 1 \\\\\n-1 &amp; 0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n0 &amp; 1 \\\\\n-1 &amp; 0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\na e + b g &amp; a f + b h \\\\\nc e + d g &amp; c f + d h\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n-a e - c f &amp; -b e - d f \\\\\n-a g - c h &amp; -b g - d h\n\\end{array}\\right)$</div>"}︡{"done":true}
︠a2dd6c4d-010e-4d76-8578-a15165020bacs︠
### Problem 2.2 (b)
P = matrix([[0,1],
           [0,0]])
P^2

### Problem 2.2 (b)
a,b,c,d = var('a,b,c,d')
P = matrix([[a,b],
           [c,d]])
show(P^2)
︡a3b4a449-d870-4929-accf-ec6f53a8949a︡{"stdout":"[0 0]\n[0 0]\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\na^{2} + b c &amp; a b + b d \\\\\na c + c d &amp; b c + d^{2}\n\\end{array}\\right)$</div>"}︡{"done":true}
︠c3d35be6-69b8-40a9-ae5f-44cbd4c578bes︠
### Problem 2.2 (c)
A = matrix([[1,2],
          [3,4]])

B = matrix([[4,3],
           [2,1]])

show((A + B))
(A + B).det()
︡82b7e1b1-fbf6-4546-aaf7-5167b1e225c9︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n5 &amp; 5 \\\\\n5 &amp; 5\n\\end{array}\\right)$</div>"}︡{"stdout":"0\n"}︡{"done":true}
︠41ff3e00-a37b-47e4-b505-a4045765c0f4s︠
### Problem 2.2 (c)
A = matrix([[1,2],
          [2,1]])
B = matrix([[2,1],
           [1,2]])
show((A + B))
(A + B).det()
︡f6eaca36-97b6-41a2-8f37-0ab585ca4afc︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n3 &amp; 3 \\\\\n3 &amp; 3\n\\end{array}\\right)$</div>"}︡{"stdout":"0\n"}︡{"done":true}
︠962ca13a-84ca-4a11-9e69-900c99f9f3bc︠
### Problem 2.2 (d)
C = matrix([[2,2],
          [2,2]])

D = matrix([[1,3/2],
           [2/3,1]])

C.det()
D.det()
show((C + D))
(C + D).det()
︡e450df9c-59d6-43a8-ae44-024e9760e574︡{"stdout":"0\n"}︡{"stdout":"0\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n3 &amp; \\frac{7}{2} \\\\\n\\frac{8}{3} &amp; 3\n\\end{array}\\right)$</div>"}︡{"stdout":"-1/3\n"}︡{"done":true}
︠9af4f816-03e4-471e-9ffa-eacab906fa9d︠
### Problem 3.1 (a)

A = matrix([[1, 2, 3],
           [4, 5, 6],
           [7, 8, 9]])

A.det()

#cofactors matrix
show(A.adjugate())
︡8e0bd57c-7b65-4339-a2c0-bb036047d12f︡{"stdout":"0\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n-3 &amp; 6 &amp; -3 \\\\\n6 &amp; -12 &amp; 6 \\\\\n-3 &amp; 6 &amp; -3\n\\end{array}\\right)$</div>"}︡{"done":true}
︠b9e2ea1e-b408-445e-8bdc-a2dcf960db29︠
### Problem 3.1 (b)

a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p = var('a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p')

M = matrix([[1,0,1],
           [1,1,0],
           [0,1,1]])

K = matrix([[a,b,c],
           [d,e,f],
           [g,h,i]])

M.det()
K.det()
︡623df67d-3e37-4c14-8488-246424a8525e︡{"stdout":"2\n"}︡{"stdout":"-(f*h - e*i)*a + (c*h - b*i)*d - (c*e - b*f)*g\n"}︡{"done":true}
︠d2083be5-6ae0-4c0c-9805-d3fb11f5257as︠
### Problem 3.1 (c)

B = matrix([[1,0,1],
           [1,1,0],
           [0,1,1]])

A = matrix([[2,0,1],
           [1,1,0],
           [0,1,1]])

B.det() == 2*A.det()
︡8aeadf6e-c04c-4188-9b6e-6345279d9e2c︡{"stdout":"False\n"}︡{"done":true}
︠99dacb64-7958-4c53-bd15-aa1baf21dc83s︠
### Problem 3.1 (d)

A = matrix([[2,0,1],
           [1,1,0],
           [0,1,1]])

A.det() == A[0][0]*A[1][1]*A[2][2]
︡cbef4880-3113-42cd-8122-aaa81bfab0b4︡{"stdout":"False\n"}︡{"done":true}
︠1b680223-4b19-4a42-ac62-be23dc54c7d6s︠
### Deep Dive Problem 1 (a)
M_1 = matrix([[0, 2, -4, 2],
    [1, 0, 2, 1],
    [4, -1, 11, 2]])

M_2 = matrix([[2, -1, 7, 0],
    [0, 1, -2, 1],
    [5, 0, 10, 5]])

show(M_1.rref())
show(M_2.rref())
M_1.rref() == M_2.rref()
︡1ea79535-c9d6-4444-9d63-12d9dbaa8e5f︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 3 \\\\\n0 &amp; 1 &amp; 0 &amp; -1 \\\\\n0 &amp; 0 &amp; 1 &amp; -1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 3 \\\\\n0 &amp; 1 &amp; 0 &amp; -1 \\\\\n0 &amp; 0 &amp; 1 &amp; -1\n\\end{array}\\right)$</div>"}︡{"stdout":"True\n"}︡{"done":true}
︠294490e8-932c-4cae-8b50-30f476889d4as︠
### Deep Dive Problem 1 (b)
N_1 = matrix([[0, 2, 2],
    [1, 0, 1],
    [4, -1, 2]])

N_2 = matrix([[2, -1, 0],
    [0, 1, 1],
    [5, 0, 5]])

N_1.rref() == N_2.rref()
︡9a8bc084-4593-494b-98ee-4929713f816e︡{"stdout":"True\n"}︡{"done":true}
︠f958289e-c245-4f0e-a245-adb85af5c05ds︠
### Deep Dive Problem 1 (b)
P = matrix([[0, 2, -4],
    [1, 0, 2],
    [4, -1, 11]])

Q = matrix([[2, -1, 7],
    [0, 1, -2],
    [5, 0, 10]])

show(P.rref())
show(Q.rref())
P.rref() == Q.rref()
︡6c5ee975-479e-434f-92b7-c5c041b8d273︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"stdout":"True\n"}︡{"done":true}
︠68d5e9a1-8ea5-4c39-9141-1215ea35b91fs︠
### Deep Dive Problem 1 (b)
M_7 = matrix([[0, -4, 2],
    [1, 2, 1],
    [4, 11, 2]])

M_8 = matrix([[2, 7, 0],
    [0, -2, 1],
    [5, 10, 5]])

M_7.rref() == M_8.rref()
︡0fe22f1f-fd61-4660-bac5-ed7f2c354080︡{"stdout":"True\n"}︡{"done":true}
︠2ddb0978-6ba4-4932-bd85-d9525b0fad46s︠
### Deep Dive Problem 1 (d) and (e)
F = matrix([[2, 4, 5],
    [2, 9, -1],
    [4, 1, 20]])
show(F.rref())

F_2 = matrix([[2, 4, 5],
    [2, 9, -1]])
show(F_2.rref())

F.rref() == F_2.rref()
︡77911ca3-44a5-4e2f-9499-3f002c11f4a9︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; \\frac{49}{10} \\\\\n0 &amp; 1 &amp; -\\frac{6}{5}\n\\end{array}\\right)$</div>"}︡{"stdout":"False\n"}︡{"done":true}
︠e6b7eec1-46cf-49c5-854b-5cf594a86d2fs︠
### Deep Dive Problem 1 (e)
K_1 = matrix([[0, 2, -4, 2],
    [1, 0, 2, 1]])

K_2 = matrix([[2, -1, 7, 0],
    [0, 1, -2, 1]])

show(K_1.rref())
show(K_2.rref())
K_1.rref() == K_2.rref()
︡19fdd578-aa56-458c-a522-4091fb44e6fc︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 2 &amp; 1 \\\\\n0 &amp; 1 &amp; -2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; \\frac{5}{2} &amp; \\frac{1}{2} \\\\\n0 &amp; 1 &amp; -2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"stdout":"False\n"}︡{"done":true}
︠07f69f00-d6fc-4dd7-bce2-0e28335f51ffs︠
### Deep Dive Problem 2 (c)

A = matrix(QQ, [[0.2, 0.1,0.05,0.3,0.1],
               [0.1,0.2,0.1,0.05,0.2],
               [0.4,0.3,0.1,0.1,0.25],
               [0.3,0.1,0.2,0.4,0.2],
               [0.1,0.1,0.1,0.05,0.25]])
I = identity_matrix(5)
d = vector(QQ, [15, 10, 0 ,25,5])
M = (I-A).augment(d)
show(M)
show((I-A).augment(d).rref())
A = float(M.rref()[0,5])
N = float(M.rref()[1,5])
R = float(M.rref()[2,5])
E = float(M.rref()[3,5])
T = float(M.rref()[4,5])
A
N
R
E
T

#show(I)
︡36734a65-8b79-446b-bd50-28f3ac840f8c︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrrr}\n\\frac{4}{5} &amp; -\\frac{1}{10} &amp; -\\frac{1}{20} &amp; -\\frac{3}{10} &amp; -\\frac{1}{10} &amp; 15 \\\\\n-\\frac{1}{10} &amp; \\frac{4}{5} &amp; -\\frac{1}{10} &amp; -\\frac{1}{20} &amp; -\\frac{1}{5} &amp; 10 \\\\\n-\\frac{2}{5} &amp; -\\frac{3}{10} &amp; \\frac{9}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{4} &amp; 0 \\\\\n-\\frac{3}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{5} &amp; \\frac{3}{5} &amp; -\\frac{1}{5} &amp; 25 \\\\\n-\\frac{1}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{20} &amp; \\frac{3}{4} &amp; 5\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrrr}\n1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; \\frac{3683775}{41227} \\\\\n0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; \\frac{2264625}{41227} \\\\\n0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; \\frac{3568850}{41227} \\\\\n0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; \\frac{5769550}{41227} \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; \\frac{1928450}{41227}\n\\end{array}\\right)$</div>"}︡{"stdout":"89.35345768549737\n"}︡{"stdout":"54.93062798651369\n"}︡{"stdout":"86.56584277294006\n"}︡{"stdout":"139.9459092342397\n"}︡{"stdout":"46.77638440827613\n"}︡{"done":true}
︠bc5fde10-c40f-4881-beb6-ab0186f0ca05s︠
### Deep Dive Problem 2 (d)

A = matrix(QQ, [[0.2, 0.1,0.05,0,0.1],
               [0.1,0.2,0.1,0,0.2],
               [0.4,0.3,0.1,0,0.25],
               [0.3,0.1,0.2,1,0.2],
               [0.1,0.1,0.1,0,0.25]])
show(A)
show(I - A)
I = identity_matrix(5)
d = vector(QQ, [15, 10, 0 ,25,5])
M = (I-A).augment(d)
show(M)
show((I-A).augment(d).rref())
︡1a0d28b3-c188-40a4-88d6-a40039f94f0e︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n\\frac{1}{5} &amp; \\frac{1}{10} &amp; \\frac{1}{20} &amp; 0 &amp; \\frac{1}{10} \\\\\n\\frac{1}{10} &amp; \\frac{1}{5} &amp; \\frac{1}{10} &amp; 0 &amp; \\frac{1}{5} \\\\\n\\frac{2}{5} &amp; \\frac{3}{10} &amp; \\frac{1}{10} &amp; 0 &amp; \\frac{1}{4} \\\\\n\\frac{3}{10} &amp; \\frac{1}{10} &amp; \\frac{1}{5} &amp; 1 &amp; \\frac{1}{5} \\\\\n\\frac{1}{10} &amp; \\frac{1}{10} &amp; \\frac{1}{10} &amp; 0 &amp; \\frac{1}{4}\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n\\frac{4}{5} &amp; -\\frac{1}{10} &amp; -\\frac{1}{20} &amp; 0 &amp; -\\frac{1}{10} \\\\\n-\\frac{1}{10} &amp; \\frac{4}{5} &amp; -\\frac{1}{10} &amp; 0 &amp; -\\frac{1}{5} \\\\\n-\\frac{2}{5} &amp; -\\frac{3}{10} &amp; \\frac{9}{10} &amp; 0 &amp; -\\frac{1}{4} \\\\\n-\\frac{3}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{5} &amp; 0 &amp; -\\frac{1}{5} \\\\\n-\\frac{1}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{10} &amp; 0 &amp; \\frac{3}{4}\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrrr}\n\\frac{4}{5} &amp; -\\frac{1}{10} &amp; -\\frac{1}{20} &amp; 0 &amp; -\\frac{1}{10} &amp; 15 \\\\\n-\\frac{1}{10} &amp; \\frac{4}{5} &amp; -\\frac{1}{10} &amp; 0 &amp; -\\frac{1}{5} &amp; 10 \\\\\n-\\frac{2}{5} &amp; -\\frac{3}{10} &amp; \\frac{9}{10} &amp; 0 &amp; -\\frac{1}{4} &amp; 0 \\\\\n-\\frac{3}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{5} &amp; 0 &amp; -\\frac{1}{5} &amp; 25 \\\\\n-\\frac{1}{10} &amp; -\\frac{1}{10} &amp; -\\frac{1}{10} &amp; 0 &amp; \\frac{3}{4} &amp; 5\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrrr}\n1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠2b4fd7f8-b803-4b57-bc07-4b898205e25b︠









