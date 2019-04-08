A = [10 7 8 7;7 5 6 5; 8 6 10 9; 7 5 9 10];
b = [32; 23; 33; 31];
x = inv(A) * b; 

% Il perturbam pe b
bp = [32.1; 22.9; 33.1; 30.9];
xpb = inv(A) * bp;

err_in = norm(b-bp); % Eroarea de intrare
err_out = norm(x-xpb); % Eroarea de iesire

fab = err_out/err_in % Factorul de amplificare cand il perturbam pe b

% Il perturbam pe A
Ap = [10 7 8.1 7.2; 7.8 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
xpa = Ap \ b;

err_in_a = norm(A-Ap);
err_out_b = norm(x-xpa); 

faa = err_out_b / err_in_a % Factorul de aplificare cand il perturbam pe A

% TODO eroare relativa

% cond - conditionarea unei matrici
% norm - norma unei matrici 

% Problema 2. Sa se studieze conditionarea matricii Hilber Hn in raport cu norma
% euclidiana, n = 10,15

% cond(A,p) - 1,2, 'fro', 'inf'
% Matricea lui Hilbert hij = 1 / (i + j - 1)


% Problema 3. Sa se studieze conditionarea matricii vander.. Vn(t) pentru
% tk  = -1 + h * 2/n si n = 10,15 in raport cu norma Cebasw
% b) tk = 1/k, k = 1,n , n = 10,15


% Problema 4.

% Problema 5. 
% Fie En = Integrala x^n e^x-1 dx
% Se observa ca E1 = 1/e si En = 1 - nEn-1, n =2,3,4,5...
% Se poate arata ca 0 < En < 1 / n+1 si daca E1 = C avem
% lim n-> inf En = 0 , C = 1/e si 

% function y = MyE(err) 
% n = 5; En -> 1, En + 1 -> E1
% E1(11) - E1(10) / E1(19) < err 

% Eplicati fenomenul, gasiti un remediu si calculati E cu precizia eps