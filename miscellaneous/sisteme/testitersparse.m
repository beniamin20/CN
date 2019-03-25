%testiter
o1=ones(n-1,1);
A=spdiags([-ones(n,1),5*ones(n,1),-ones(n,1)],-1:1,n,n);
b=A*ones(n,1);
err=eps;
w=relopt(full(A));
tic
[x1,ni1]=Jacobi(A,b,b,err,1000); 
[x2,ni2]=relax(A,b,1,b,err,1000);
[x3,ni3]=relax(A,b,w,b,err,1000);
toc
ni1,ni2,ni3