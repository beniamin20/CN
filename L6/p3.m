function result = p3(xToCalculate)
  result = 1;
  #x = [100 121 144];
  #y = [10 11 12];
  [x,y] = getXandY(xToCalculate);
  result = Lagrange(xToCalculate,x,y);
end

function [x,y] = getXandY(xToCalculate)
  p = 1;
  x = [];
  y = [];
  
  while (p-1)*(p-1) <= xToCalculate
    x(p) = p*p;
    y(p) = p;
    p++;
  end
  
  x = x(end-3+1:end);
  y = y(end-3+1:end);
end

