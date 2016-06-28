function J = computeCostMulti(X, y, theta)

m = length(y); % number of training examples
J = 0;

% ====================== YOUR CODE HERE ======================

for i = 1:m
    J = J + 1/(2*m)*(X(i,:)*theta - y(i))^2;
end

% =========================================================================

end
