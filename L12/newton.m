% f = @(x) cos(x) - x;
% fd = @(x) - sin(x) - 1;
% x1 = pi/4
% err = eps
% nmax = 100
function result = newton(f,ffd,x1,err,nmax)
  for i=1:nmax
    result = x1 - (1/ffd(x1)) * f(x1);
    if abs(result - x1) < err * abs(result)
       return;
    end
    x1 = result;
end