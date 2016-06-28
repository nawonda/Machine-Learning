function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
n = size(X,2);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    temp = theta;
    for j = 1:n        
        temp(j) = theta(j) -  (alpha/m) * (X(:,j)' * (X * theta) - X(:,j)'*y);            
    end
    theta = temp;

    % ============================================================
    J_history(iter) = computeCostMulti(X, y, theta);

end
end
