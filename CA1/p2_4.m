function [alpha, beta] = p2_4(x,y)
    alpha = sum((x - mean(x)) .* (y - mean(y))) / sum((x - mean(x)).^2);
    beta = mean(y) - alpha * mean(x);
end

