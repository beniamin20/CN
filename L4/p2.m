% Sa se implementeze descompunerea LUP
function result = p2(A)
  A = getHardcodedMatrix();
  n = rows(A);
  b = getHardcodedB();
  
  [L,U,P]=LUP(A);

  % Solve LY = B
  Y = [];
  for i = 1:n
    sum = 0;
    for j = 1:i-1
      sum = sum + Y(j) * L(i, j);
    end
    Y(i) = (b(i) - sum) / L(i,i);
  end
  
  % Solve Ux = Y
  x = [];
  for i = n:-1:1
    sum = 0;
    for j = n:-1:i+1
      sum = sum + (x(j) * U(i,j));
    end
    x(i) = (Y(i) - sum) / U(i,i);
  end
  disp(x);
end

function [L,U,P]=LUP(A)
  % m - linii, n - coloane
  [m,n]=size(A);
  P=zeros(m,n);
  
  % piv [1; 2; 3; .... ; 4]
  pivot=(1:m)';

  for i=1:m-1
      % maxValue - maximul value in module, on column
      [maxValue , maxIndex] = max(abs(A(i:m,i)));
      % maxIndex index of maximum value
      maxIndex = maxIndex + i-1;
      
      %interschimbare linii
      if i~=maxIndex
          A([i,maxIndex],:) = A([maxIndex,i],:);
          pivot([i,maxIndex]) = pivot([maxIndex,i]);
      end
      
      %Complement Schur
      lin=i+1:m;
      A(lin,i)=A(lin,i)/A(i,i);
      A(lin,lin)=A(lin,lin)-A(lin,i)*A(i,lin);
  end;

  for i=1:m
     P(i,pivot(i))=1;
  end;

  % triu - returns the upper triangular part of matrix 
  U= triu(A);

  % tril - returns the upper triangular part of matrix 
  % eye - Return an identity matrix.
  L = tril(A,-1) + eye(m);
end


function result = getHardcodedMatrix()
  result = [ 10 -7 0; -3 2 6; 5 -1 5];
end

function result = getHardcodedB()
  result = [7; 2.5; 6.1];
  return 
end 