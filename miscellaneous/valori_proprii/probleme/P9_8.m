%P9_8
A=[
    190   66  -84   30
     66  303   42  -36
    336 -168  147 -112
     30  -36   28  291]
 e1=eig(A)
 [e2,it]=QRSplit3(A,eps)
    