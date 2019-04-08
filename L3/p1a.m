% Formule
% Eroare = x - x*
% Eroare Absoluta = norm(x* - x)
% Eroarea relativa = Eroare Absoluta / norm(x)

A = [10 7 8 7;7 5 6 5; 8 6 10 9; 7 5 9 10];
b = [32; 23; 33; 31];
bp = [32.1; 22.9; 33.1; 30.9];

disp('Rezultatul fara perturbari in datele de intrare este');
x = inv(A) * b 

disp('Rezultatul cu perturbari in datele de intrare este')
xp = inv(A) * bp

disp('Eroarea la intrare este');
errIn = b - bp
disp('');

disp('Eroarea absoluta la intrare este');
errInAbs = norm(bp - b)
disp('');

disp('Eroarea relativa la intrare este');
errInRel = errInAbs / norm(b)
disp('');

disp('Eroarea la iesire este');
errOut = x - xp
disp('');

disp('Eroarea absoluta la iesire este');
errOutAbs = norm(xp -x)
disp('')

disp('Eroarea relativa la iesire este');
errOutRel = errOutAbs / norm(x)

