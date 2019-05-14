#{
  f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
  a - Definition interval start
  b - Definition interval end
  n - number of squares. Higher the n -> higher the precission.
 #}
function result = rectangle(f,a,b,n)
  previous = solveUsingRectangle(f,a,b,n-1);
  while n <= 100
    current = solveUsingRectangle(f,a,b,n);
    if abs(current - previous) < eps
      result = current;
    end
    previous = current; 
    n = n + 1;    
  end
  result = current;
end

#{
  f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
  a - Definition interval start
  b - Definition interval end
  n - number of squares. Higher the n -> higher the precission.
 #}
function result = solveUsingRectangle(f,a,b,n)
   sum = 0;
   for i=0:n-1
      sum = sum + f(getXi(a,b,n,i));
   end
   result = deltaX(a,b,n) * sum;
end

% calculate deltaX 
function result = deltaX(a,b,n)
  result = (b-a)/n;
end

% calculate xi
function result= getXi(a,b,n,i)
  result = a + i * deltaX(a,b,n);
end