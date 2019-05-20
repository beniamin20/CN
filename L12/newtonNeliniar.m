% f = >> f = @(x) [9*x(1)^2 + 36*x(2)^2 + 4*x(3)^2 - 36 ; x(1)^2 - 2*x(2)^2 - 20*x(3); x(1)^2 - x(2)^2 + x(3)^2];
% fd = fd = @(x) [18*x(1), 72*x(2), 8*x(3); 27*x(1), -4*x(2), -20; 2*x(1), -2*x(2), 2*(3)];
% x1 = [1; 1; 0]
% err = eps
% nmax = 100
function result = newtonNeliniar(f,fd,x1,err,nmax)
  for i=1:nmax
    result = x1 - fd(x1) \ f(x1);
    if norm(result - x1) < err
       return;
    end
    x1 = result;
end