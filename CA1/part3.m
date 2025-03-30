clc, clearvars, close all;
%% 3 - 1
ts = 1e-9;
T = 1e-5;
tau = 1e-6;
t = 0:ts:T;
x = zeros(size(t));
x(1:(tau/ts)) = 1;
figure;
plot(t, x, "LineWidth", 2);
xlim([0, T]);
ylim([-0.2, 1.2]);
xlabel("t"), ylabel("x(t)"), title("Input Signal");
%% 3 - 2
R = 450;
c = 3e8;
td =  2 * R / c;
outputSignal = zeros(size(t));
alpha = 0.5;
outputSignal(td/ts:(td+tau) / ts) = alpha;
figure;
plot(t, outputSignal, "LineWidth", 2);
xlim([0, T]);
ylim([-0.2, 1.2]);
xlabel("t"), ylabel("x(t)"), title("Output Signal");
%% 3 - 3
sigma = calc_corr(t, tau, ts, outputSignal);
plot(t, sigma, "LineWidth", 3);
[maxSum, maxCorr] = max(ro);
td = t(maxCorr);
estimatedR = td * c / 2

%% 3 - 4
noiseLevel = 0;
numIterations = 100;
distance = 450;
noiseIncrement = 0.1;
errorValues = zeros(1, numIterations);
estimatedDistances = zeros(1, numIterations);
lastError = 0;
currentIndex = 1;

while(lastError < 10)
    totalError = 0;
    totalDistance = 0;
    
    for iteration = 1 : numIterations
        correlationOutput = calc_corr(t, tau, ts, outputSignal + noiseLevel * randn(size(outputSignal)));
        [~, maxCorrIndex] = max(correlationOutput);
        estimatedDistance = t(maxCorrIndex) * c / 2;
        totalError = totalError + abs(distance - estimatedDistance);
        totalDistance = totalDistance + estimatedDistance;
    end
    
    errorValues(currentIndex) = totalError / numIterations;
    estimatedDistances(currentIndex) = totalDistance / numIterations;
    lastError = errorValues(currentIndex);
    currentIndex = currentIndex + 1;
    noiseLevel = noiseLevel + noiseIncrement;
end

lastValidIndex = currentIndex - 1;
noiseRange = (0 : noiseIncrement : noiseIncrement * (lastValidIndex - 1));

subplot(1, 2, 1);
plot(noiseRange, errorValues(1:lastValidIndex), 'LineWidth', 3);
title('Error');
xlabel('noise');
ylabel('error');

subplot(1, 2, 2);
plot(noiseRange, estimatedDistances(1:lastValidIndex), 'LineWidth', 3);
title('Estimated Distance');
xlabel('noise');
ylabel('R');