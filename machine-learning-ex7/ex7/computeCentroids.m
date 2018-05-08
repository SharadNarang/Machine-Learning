function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
A = [[X],idx];
for k=1:K,
name = sprintf("ind%d",k);
eval([name ' = (A(:,end) == k);']);
%ind2 = A(:,3) == 2;
%ind3 = A(:,3) == 3;
#name1 = sprintf("A_test%d",k);
#eval([name1 ' = mean(A(name,[1,2]));']);
%A1 = mean(A(ind1,[1,2]));
%A2 = mean(A(ind2,[1,2]));
%A3 = mean(A(ind3,[1,2]));
#name_t = sprintf("centroids(%d,:)",k);
%eval([name_t ' = mean(A(name,[1,2]))']);
%eval([name_t ' = mean(A(',name,',[1,2]))']);
#eval([name_t ' = A(name1)']);
#name_t = sprintf("centroids(%d,:)",k);
#name_t = sprintf("centroids(%d,:) = A_test%d",k,k);
#eval([name_t  '= ',(name1);']);
str1= sprintf("A_test%d = mean(A(ind%d,[:,1:end-1]));",k,k);
eval(str1);
str5= sprintf("if length(A_test%d) == 0  \n A_test%d = zeros(1,n); \n end;",k,k);
eval(str5)
str= sprintf("centroids(%d,:) = A_test%d;",k,k);
eval(str);
end







% =============================================================


end

