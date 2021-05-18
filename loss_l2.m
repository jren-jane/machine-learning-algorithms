% Input Y_hat_train and Y_train are column vectors.
% Output loss is a scalar.
function [loss] = loss_l2(Y_hat_train, Y_train)
loss = mean((Y_hat_train - Y_train).^2);
end