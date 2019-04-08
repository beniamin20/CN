% Problema 4
% Dezvolta exponentiala intr-o serie Maclaurin
% x - puterea lui e
% n - numarul de termeni din serie
function result = MyExp(x,n)
   result = 1;
   
   if n == 0
      return;
   end
  
  for i = 1:n -1
    result = result + (x^i / factorial(i));
  endfor
end