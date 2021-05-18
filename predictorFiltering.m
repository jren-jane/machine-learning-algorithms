function [R] = predictorFiltering(X, Y)
mu_x = mean(X);
mu_y = mean(Y);
d = size(X, 2);
R = ones(1, d);
for j = 1 : d
    R(j) = ((X(:, j) - mu_x(j))' * (Y - mu_y)) ...
        / sqrt(((X(:, j) - mu_x(j))' * (X(:, j) - mu_x(j))) * ((Y - mu_y)' * (Y - mu_y)));
end
end