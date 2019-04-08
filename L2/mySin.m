x = input('Give x ');
err = input ('Give err ');

function r = mySin(x,err)
  x = mod(x, 2 * pi);
  n = 0;
  r = 0;
  while true
    curent = ((-1)^n) * (x^(2 * n + 1) / factorial(2 * n + 1));
    if abs(curent) < err
      break;
    end
    r = r + curent;
    n = n + 1;
  end  
end

result = mySin(x,err);
disp ('Result is');
disp(result);