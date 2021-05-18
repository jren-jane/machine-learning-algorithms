function [train_sample, test_sample] = split_sample(sample, train_ratio, permute)
[sample_size, ~] = size(sample);
train_size = ceil(sample_size * train_ratio);
if permute == 1
    rng(1);
    train_index = randperm(sample_size, train_size); 
    train_sample = sample(train_index, :);
    test_index = (setdiff(randperm(sample_size),train_index));
    test_sample = sample(test_index, :);
else 
    train_sample = sample(1 : train_size, :);
    test_sample = sample(train_size + 1 : end, :);
end