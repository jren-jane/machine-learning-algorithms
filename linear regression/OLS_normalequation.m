function [beta] = OLS_normalequation(X, Y)
beta = (X' * X) \ (X' * Y);
end