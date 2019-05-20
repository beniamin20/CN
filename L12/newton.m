function result = newton(f,x1,err,nmax)
  ff = f(x);  
  ffd = diff(ff, x)  
  
  for i=1:n
    result = x1 - (1/ffd(x1)) * f(x1);
    if abs(result - x1) < err
       return;
    end
    x1 = result;
end