f = @(x) 1 + x.^2;
a = 1;
b = 5;
e = 0.0000001;

disp("f(x) = 1 + x^2");
disp("a = 1");
disp("b = 5");
disp("e = 0.00000001 | eps");
disp("");

disp("Result quad(f,a,b)");
disp(quad(f,a,b));

disp("Result rectangle(f,a,b)");
disp(rectangle(f,a,b));

disp("Result trapezoidal(f,a,b)");
disp(trapezoidal(f,a,b));

disp("Result simpson(f,a,b)");
disp(simpson(f,a,b));

disp("Result romberg(f,a,b)");
disp(romberg(f,a,b));

disp("Result adquad(f,a,b,e)");
disp(adquad(f,a,b,e));