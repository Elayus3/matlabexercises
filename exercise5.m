% Bernoulli sequence, probability should be: 0.313 
% taken from https://planetcalc.com/7044/

% Empirically, taking sucess as 1:
results = randi([0,1],10000,5);
nbCorrect = 0
for c = 1:10000
    count = 0;
    for n = 1:5
        if results(c,n) == 1
            count = count + 1;
        end
    end
    if count == 3
        nbCorrect = nbCorrect + 1;
    end
end
disp("Nb of successful simulations:");
disp(nbCorrect);
disp("Total nb of trials");
disp(10000);
disp("Probability");
disp([nbCorrect/10000]);