% Sa se scrie rutine pentru descompunerea Cholesky a unei matrice hermitiene 
% si pozitiv definite ¸si rezolvarea unui sistem cu o astfel de
% matrice prin descompunere Cholesky.
function [x,cholMatrix] = p4()
  A = getHardcodedMatrix();
  n = rows(A);
  xSetat = [1;2;3;4;5];
  b = A * xSetat;
  disp(b);
 
  x = [];
  
  cholMatrix = decomposeUsingCholesky(A)
  chol(A);
  return;
  % se face A transpus * y = b si apoi se face Y * x = b
  %disp("");
  %chol(A)

  % Solve Ax = b using cholMatrix, x = []
  % Triunghi superior
  
  for i = 1:n
    sum = 0;
    for j = 1:i-1
      sum = sum + x(j) * cholMatrix(i, j);
    end
    x(i) = (b(i) - sum) / cholMatrix(i,i);
  end
  disp(x);
end

function result = decomposeUsingCholesky(A)
  %apel R=Cholesky(A)
  %A - matrice hermitiana 
  %R - matrice triunghiulara superior
  [m,n]=size(A);
  for k=1:m
      for j=k+1:m
          A(j,j:m)=A(j,j:m)-A(k,j:m)*A(k,j)/A(k,k);
      end
      A(k,k:m)=A(k,k:m)/sqrt(A(k,k));
  end
  result=triu(A);
end

% Return Hermitian Matrix
function result = getHardcodedMatrix()
  result = pascal(5);
end

