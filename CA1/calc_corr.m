function sigma = calc_corr(t, tau, ts, inputSignal)
    sigma = zeros(size(t));
    for i=1:length(t)-(tau/ts)
        temp = zeros(size(t));
        temp (i:i+(tau/ts)-1) = 1;
        sigma(i) = sum(temp .* inputSignal);
    end
end


