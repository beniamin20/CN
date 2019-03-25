% Formule
% Eroare = x - x*
% Eroare Absoluta = norm(x* - x)
% Eroarea relativa = Eroare Absoluta / norm(x)

A = [10 7 8 7;7 5 6 5; 8 6 10 9; 7 5 9 10];
Ap = [10 7 8.1 7.2;7.8 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
b = [32; 23; 33; 31];

disp('Rezultatul fara perturbari in datele de intrare este');
x = inv(A) * b 

disp('Rezultatul cu perturbari in datele de intrare este')
xp = inv(Ap) * b

disp('Eroarea la intrare este');
errIn = A - Ap
disp('');

disp('Eroarea absoluta la intrare este');
errInAbs = norm(Ap - A)
disp('');

disp('Eroarea relativa la intrare este');
errInRel = errInAbs / norm(A)
disp('');

disp('Eroarea la iesire este');
errOut = x - xp
disp('');

disp('Eroarea absoluta la iesire este');
errOutAbs = norm(xp -x)
disp('')

disp('Eroarea relativa la iesire este');
errOutRel = errOutAbs / norm(x)

