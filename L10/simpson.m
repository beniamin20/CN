#{
  f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
  a - Definition interval start
  b - Definition interval end
  n - number of squares. Higher the n -> higher the precission. 
  !!! n MUST be even !!!
 #}
function result = simpson(f,a,b)
  n = 4;
  previous = solveUsingSimpson(f,a,b,n-2);
  while n <= 100
    current = solveUsingSimpson(f,a,b,n);
    if abs(current - previous) < eps
      result = current;
    end
    previous = current; 
    n = n + 2;    
  end
  result = current;
end

#{
  f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
  a - Definition interval start
  b - Definition interval end
  n - number of squares. Higher the n -> higher the precission.
 #}
function result = solveUsingSimpson(f,a,b,n)
   sum = f(a) + f(b);
   for i=1:n-1
      if mod(i,2) == 1
         sum = sum + (4 * f(getXi(a,b,n,i)));
      end
      if mod(i,2) == 0
         sum = sum + (2 * f(getXi(a,b,n,i)));
      end
   end
   result = (deltaX(a,b,n) / 3) * sum;
end

% calculate deltaX 
function result = deltaX(a,b,n)
  result = (b-a)/n;
end

% calculate xi
function result= getXi(a,b,n,i)
  result = a + i * deltaX(a,b,n);
end