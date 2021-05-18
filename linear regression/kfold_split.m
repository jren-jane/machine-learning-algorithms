% This function takes in a sample and parameter k and splits the sample 
% into k folds as matrices stacked vertically in a cell array. It can be 
% used for both LOOCV and kfold validation.

function [kfolds] = kfold_split(sample, k)
kfolds = { }; % Use cell array to store output matrices
[sample_size, ~] = size(sample);
% Sample size might not be fully divisible by k
remainder = rem(sample_size, k);
quotient = (sample_size - remainder) / k;
% Shuffle the data by rows so no more randomization is needed
ind = randperm(sample_size);
sample_rnd = sample(ind, :);
    for i = 1 : remainder
        kfolds{i, 1} = sample_rnd(((i - 1) * (quotient + 1) + 1) : i * (quotient + 1), :);
    end
    for i = (remainder + 1) : k
        kfolds{i, 1} = sample_rnd(((i - 1) * quotient + 1) : i * quotient, :);
    end
end