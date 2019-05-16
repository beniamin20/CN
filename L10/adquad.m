% Adquad L10. Algoritm 1.
% Cuadratura adaptiva bazata pe metoda lui Simpson si extrapolare
function result = adquad(f,a,b,e)
  c = (a+b)/2;
  fa = f(a); fb = f(b); fc = f(c);
  result = quadstep(f,a,b,e,fa,fc,fb);
end

function result = quadstep(f,a,b,e,fa,fc,fb)
  h = b-a;
  c = (a+b) / 2;
  fd = f((a+c)/2);
  fe = f((c+b)/2);
  R1 = (h/6) * (fa+4*fc+fb);
  R2 = (h/12) * (fa + 4*fb + 2* fc + 4*fe + fb);
  
  if abs(R1-R2) < e
    result = R2 + (R2-R1)/15;
    return;
  end
  
  Ra = quadstep(f, a, c, e, fa, fd, fc);
  Rb = quadstep(f, c, b, e, fc, fe, fb);
  result = Ra + Rb;
end