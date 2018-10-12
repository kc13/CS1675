function [L] = getLikelihood(X,Y,w)
%getLikelihood.m
    % Inputs: 
    % X = feature matrix
    % Y = true labels
    % w = weight vector
    % Outputs: 
    % L = likelihood estimate, using logistic regression
    % and the supplied w for the model
    
    % predictions
    yPred = X*w;
    
    L = prod(((sigmoid(yPred)).^Y).*((1-sigmoid(yPred)).^(1-Y)));
        
end

