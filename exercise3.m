disp("Answer should be 2xp^6 + 4xp^7 =  1/16");

results = randi(2,1000,10);

%taking 2 as the coin showing head
[nbCorrect, probability] = checkRows(results);

disp(["Total nb of trials: ", num2str(10000)])
disp(["Nb of rows matching the criteria: ", num2str(nbCorrect)])
disp(["Empirical probability: ", num2str(probability)])
