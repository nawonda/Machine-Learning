function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================

    temp = theta;
    temp(1) = theta(1) -  (alpha/m) * (X(:,1)' * (X * theta) - X(:,1)'*y);    
    temp(2) = theta(2) -  (alpha/m) * (X(:,2)' * (X * theta) - X(:,2)'*y);
    theta = temp;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
end
disp(J_history)
end
