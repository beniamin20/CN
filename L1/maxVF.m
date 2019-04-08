function m = maxVF()
% Cel mai mare numar reprezentabil in Virgula Flotanta
m = (2-myEps()) * 2^1023;
end
disp(m);