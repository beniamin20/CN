% Algoritm preluat din L10. 3 Metoda lui Romberg
function result = romberg(f, a, b)
    n = 2;
    R = [];
    R(1,1) = ((b-a)/2) * (f(a) + f(b));
    
    while n <=10
      R(n,1) = calculateRn1(R,f,a,b,n);  
      for j=2:n
        R(n,j) = calculateRnj(R,n,j);
      end
      
      if shouldStop(R,n) == 1
        result = R(n,n);
        break;
      end
      n = n +1;
    end
    result = R(n-1,n-1);
end

% Conditia de oprire
function result = shouldStop(R,n)
   if abs(R(n,n) - R(n-1,n-1)) < eps
      result = 1;
      return;
   end 
   result = 0;
end

% Calculate Rnj
function result = calculateRnj(R,n,j)
  result = (power(4,j-1)*R(n,j-1) - R(n-1,j-1)) / (power(4,j-1) - 1);
end

% calculate Rn1
function result = calculateRn1(R,f,a,b,n)
  s = 0;
  for i=1:power(2,n-2)
     s = s + f(a + (i - 1/2) * getHk(a,b,n-1));
  end;
  result = (1/2) * ( R(n-1,1) + getHk(a,b,n-1) * s);
end

% Get deltaX or the height
function result = getHk(a,b,k)
  result = (b-a) / power(2,k-1);
end