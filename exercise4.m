v1 = zeros(100,1);
v2 = zeros(1000,1);
v3 = zeros(10000,1);

for c = 1:100
    v1(c) = coinToss();
end
for c = 1:1000
    v2(c) = coinToss();
end
for c = 1:10000
    v3(c) = coinToss();
end

figure()
histogram(v1)
figure()
histogram(v2)
figure()
histogram(v3)
