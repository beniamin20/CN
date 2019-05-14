function result = p2()
  xToCalculate = 1.25;
  x = [1 1.1 1.2 1.3 1.4];
  y = getY(x);
  
  result = Lagrange(xToCalculate, x, y);
  disp("Result is ");
  disp(result);  
end

function result = f(x)
  result = exp(x^2) - 1;
end

function result = getY(x)
  n = columns(x);
  result = [];
  
  for i=1:n
    result(i) = f(x(i));
  end 
end