x0 = [1;1];

[x,info] = fsolve(@funcao,[1;1]);

x = x.*1.57;

W = x(1)
S = x(2)
