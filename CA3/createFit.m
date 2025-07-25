function [fitresult, gof] = createFit(x, y)
%CREATEFIT(X,Y)
%  Create a fit.
%
%  Data for 'dataFit' fit:
%      X Input: x
%      Y Output: y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 31-Mar-2025 04:36:21


%% Fit: 'dataFit'.
[xData, yData] = prepareCurveData( x, y );

% Set up fittype and options.
ft = fittype( 'sin1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf];
opts.StartPoint = [0.499037538548108 6.28947478196155 0.485216553541941];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'dataFit' );
h = plot( fitresult, xData, yData );
legend( h, 'y vs. x', 'dataFit', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'x', 'Interpreter', 'none' );
ylabel( 'y', 'Interpreter', 'none' );
grid on


