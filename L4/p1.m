% Eliminare gaussiana cu pivotare partiala
function result = p1()
  A = getHardcodedMatrix();
  result = [];
  n = rows(A);
  m = columns(A);
  
  % Gaus elimination
  A = performGaussElimination(A);
  
  if(A == -1 || A(n,m) == 0)
    disp("Nu exista solutie unica");
  end
  
  disp(A);
  result = reverseSubstitute(A);
end

function result = reverseSubstitute(A)
  result = [];
  n = rows(A);
  m = columns(A);
  result(n) =  A(n,m)/A(n,n);

  for i = n-1:-1:1
    sum = 0;
    for j = i+1:n
      sum = sum + (A(i,j) * result(j));
    end
    % 7 - 7.000 = smth wierd
    matrixElement = cast(A(i,n+1),"double");
    numerator = (matrixElement - sum);
    denominator = A(i,i);
    result(i) = numerator / denominator;
  end
end

function result = performGaussElimination(A)
  result = [];
  % Gaus elimination
  n = rows(A);
  m = columns(A);

  for i=1:n-1
    p = findRowIndexOfAbsoluteMax(A(i:n,i));
    if(p == -1)
      disp("Nu exista solutie unica");
      result = -1;
      return;
    end
    
    % To swap row1 and row2
    %  A([1 2],:) = A([2 1], :)
    if(p != i)
      % swap them
      A([p i],:) = A([i p], :);
    end
    
    for j = i + 1:n
      % Calculeaza multiplicator
      multiplicator = A(j,i) / A(i,i);
      A(j,:) = A(j,:) - (multiplicator * A(i,:));
    end
  end
  result = A;
end

% Afla maxim nenul din vector
% Returneaza indicele pe care se afla
% Returneaza -1 daca nu exista
function result = findRowIndexOfAbsoluteMax(vector)
  [value index] = max(abs(vector));
  if(value == 0)
    result = -1
    return
  end
  result = index;
end

function result = getHardcodedMatrix()
  result = [ 10 -7 0 7; -3 2 6 4; 5 -1 5 6];
end