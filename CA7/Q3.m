clc, clearvars, close all;
sys = tf(1,1);
syms y(t)
Dy = diff(y);
ode = (diff(y,t,2) + 3 * diff(y,t,1) + 2 * y) == 5 * step(sys);
ic1 = y(0) == 1;
ic2 = Dy(0) == 1;
conds = [ic1 ic2];
ySol(t) = dsolve(ode,conds);
ySol = simplify(ySol)
t = 0:0.01:10;
ySolFun = matlabFunction(ySol);
ySolValues = ySolFun(t);
plot(t, ySolValues)
xlabel('t')
ylabel('y(t)')