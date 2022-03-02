function nbTosses = coinToss()
%COINTOSS Summary of this function goes here
%   Detailed explanation goes here
nbTosses = 1; %because we initialize the prevCoinVal
prevCoinVal = randi([0 1], 1, 1);
coinValStreak = 1;
flag = 0;
while flag == 0
    nbTosses = nbTosses + 1;
    if randi([0 1], 1, 1) == prevCoinVal
        coinValStreak = coinValStreak + 1;
        if coinValStreak == 3
            flag = 1;
            break
        end
    else 
        coinValStreak = 0;
    end
    
end
end

