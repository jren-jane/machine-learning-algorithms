function [X_norm] = featureNormalize2(X, mu, sigma)
X_norm = (X - mu) ./ sigma;
end