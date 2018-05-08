function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C = 1;
%sigma = 0.3;
C_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_vec = [0.01 0.03 0.1 0.3 1 3 10 30];
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

error_val = ones(1, 3);
#all_res = ones(64,3); 

for i = 1:length(C_vec)
    C = C_vec(i);
            for j = 1:length(sigma_vec)  
            sigma = sigma_vec(j);
            model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
            predictions = svmPredict(model, Xval);
            error= mean(double(predictions ~= yval));
#           
            error_val = vertcat(error_val,[C,sigma,error]);
#           error_val(end+1,:) = [C,sigma,error];
#          [error_train(i), error_val(i)] = learningCurve(X, y, Xval, yval, lambda);
            end 
end

B = sortrows(error_val,3);
C = B(1,1);
sigma = B(1,2);
end
