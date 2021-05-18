function[Y_denorm] = featureDenormalize(Y, mu, sigma)
Y_denorm = (Y .* sigma) + mu;
end