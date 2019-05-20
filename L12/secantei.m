function result = secantei(f,x1,x2,err,nmax)
  for i = 1:nmax
    result = x2 - ((x2 - x1) * f(x2)) / (f(x2) - f(x1));
    if abs(result - x2) < err + err * result
      return;
    end
    x1 = x2;
    x2 = result; 
  end
end