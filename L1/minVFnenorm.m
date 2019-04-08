function r = minVFnenorm()
% Cel mai mic numar nenormalizat reprezentabil in virgula flotanta
r = 1;
next = 1;
while true
  next = next/2;
  if (next) == 0
    break;
  end
  r = next;
end
end
disp('Cel mai mic numar nenormalizat este ');
disp(r);