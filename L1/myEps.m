function r = myEps()
%MYEPS Machine Epsilon
r = 1;
next = 1;
n = 2;
while true
  next = 1/n;
  if (1 + next) == 1
    break;
  end
  r = next;
  n = n * 2;
end
end
disp('Epsilonul masinii este');
disp(r);