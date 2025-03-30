clc, clearvars, close all;
load('p2.mat')
%% 2 - 1
figure;
plot(t, x);
xlabel("t"), ylabel("x"), title("x per t");
%% 2 - 2
figure;
plot(t, y);
xlabel("t"), ylabel("y"), title("y per t");
%% 2 - 3
figure;
plot(x, y, '.');
xlabel("x"), ylabel("y"), title("y per x");
%% 2 - 4
[alpha, beta] = p2_4(x, y)
figure;
plot(x, y, '.');
xlabel("x"), ylabel("y"), title("y per x and fitted curve");
hold on;
t1 = -1:0.001:1;
plot(t1, alpha .* t1 + beta, "Color", "Red", "LineWidth", 2);
legend("Data", "fitted line");
%% test
clc, clearvars, close all;

alphaTrue = 2.5;
betaTrue = 1.0;
t = 0:0.001:1;
x = sin(2 * pi * t);
y = alphaTrue * x + betaTrue;
noiseLevel = 0.1;
yNoisy = y + noiseLevel * randn(size(y));
[alphaEstimated, betaEstimated] = p2_4(x, yNoisy);
fprintf('real alpha %.4f estimated alpha %.4f\n', alphaTrue, alphaEstimated)
fprintf('real beta %.4f estimated beta %.4f\n', betaTrue, betaEstimated)
figure;
plot(x, yNoisy, '.');
xlabel("x"), ylabel("y"), title("y per x and fitted curve");
hold on;
plot(x, alphaEstimated * x + betaEstimated, 'r', 'LineWidth', 2);
legend("Data", "fitted line");
grid on;




