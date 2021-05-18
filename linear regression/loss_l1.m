% Input Y_hat_train and Y_train are column vectors.
% Output loss is a scalar.
function [loss] = loss_l1(Y_hat_train, Y_train)
loss = mean(abs(Y_hat_train - Y_train));
end