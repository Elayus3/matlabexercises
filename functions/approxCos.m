function [output] = approxCos(x, N)
%APPROXCOS approximates cos of x
output = 0;
for n = 0:N
    output = output + (-1)^n * (x^(2*n)/(factorial(2*n)));
end
end

