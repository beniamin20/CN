function [x,ni]=Jacobi(A,b,x0,err,nitmax)
  %JACOBI metoda lui Jacobi
  %apel [x,ni]=Jacobi(A,b,x0,err,nitmax)
  %parametri
  %A - matricea sistemului
  %b - vectorul termenilor liberi
  %x0 -vector de pornire
  %err - toleranta (implicit 1e-3)
  %nitmax - numarul maxim de iteratii (implicit 50)
  %x - solutia
  %ni - numarul de iteratii realizat efectiv

  %verificare parametri
  if nargin < 5
    nitmax=100; 
  end
  if nargin < 4
     err=eps; 
  end
  if nargin <3
     x0=zeros(size(b)); 
  end
  [m,n]=size(A);
  if (m~=n) | (n~=length(b))
     error('Dimensiuni ilegate')
  end
  
  %calculul lui T si c (pregatirea iteratiilor conform Jacobi)
  M=diag(diag(A));
  N=M-A;

  T=inv(M)*N;
  c=inv(M)*b;
  x=x0(:);
  
  for i=1:nitmax
     xprev=x;
     x = T * xprev + c;
     errAbs = norm(x - xprev, inf);
     errRel = errAbs / norm(x, inf);
     if (errRel <= err)
      ni = i;
      return;
      endif
  end
disp("Jacobi. Eroare. Insuficiente iteratii");