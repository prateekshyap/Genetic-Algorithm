function [ cand, minFitness ] = optimalCandidates( d, noc, mat, n )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    c = combnk (d,noc); %storing all the combinations
    s = size (c);
    noi = s (1,1); %no of iterations
    cand = zeros (1,noc); %candidate combination
    minFitness = 1000000; %a variable to store the minimum fitness value
    for i = 1 : noi %for each combination of controllers
        cost = capacitedCost (c(i,1:noc), mat, n);
        if (cost < minFitness) %if the new fitness value is less than the optimal value
            minFitness = cost; %update the minimum fitness value
            cand = c (i,1:noc); %update the candidate combination
        end
    end
end