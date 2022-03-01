function [nbCorrect,probability] = checkRows(inputMatrix)
%CHECKROWS checks how many rows have 5 consecutive heads
% Using 2 as the coin showing head, 1 as the coin showing tail
nbCorrect = 0;
nbTrials = size(inputMatrix,1);

for c = 1:nbTrials
    countHead = 0;
    for n = 1:10
        if countHead == 0 && inputMatrix(c,n) == 2
            countHead = 1;
        elseif countHead == 5 && inputMatrix(c,n) ~= 2
            nbCorrect = nbCorrect + 1;
            break
        elseif countHead ~= 0 && inputMatrix(c,n) ~= 2
            countHead = 0;
        elseif countHead == 5 && inputMatrix(c,n) == 2
            break
        elseif countHead ~= 0 && inputMatrix(c,n) == 2
            countHead = countHead + 1;
        end
    end
end
probability = nbCorrect/nbTrials;
end

