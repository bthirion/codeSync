% Log data likelihood of Gaussian Graphical Model
% Input:    S = empirical covariance of test data
%           K = inverse covariance of training data
% Output:   evid = log data likelihood
function evid = logDataLikelihood(S,K)
try
    L = chol(K);
    logdetK = 2*sum(log(diag(L)));
    evid = logdetK-S(:)'*K(:);
catch ME
    evid = -inf;
end

    
    
    
