points_05 = zeros(20);
points_35 = zeros(20);

for n = 1:20
    points_05(n) = abs(approxCos(0.5,n) - cos(0.5));
    points_35(n) = abs(approxCos(35,n) - cos(35));
end

figure()
semilogy(points_05)
hold on
semilogy(points_35)
legend('0.5', '35')
test_angle = 20
cos(test_angle)
approxCos(test_angle,20)


