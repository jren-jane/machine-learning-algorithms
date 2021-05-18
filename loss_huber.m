% Input Y_hat_train and Y_train are column vectors.
% Output loss is a scalar.
function [loss] = loss_huber(Y_hat_train, Y_train, delta)
    if mean(abs(Y_hat_train - Y_train)) <= delta
        loss = 0.5 * mean((Y_train - Y_hat_train).^2);
    else
        loss = delta * mean(abs(Y_hat_train - Y_train)) - (delta ^ 2) / 2;
    end
end