interval = [-2*pi 2*pi];
nbPoints = 1000;
points = linspace(interval(1),interval(2),nbPoints);

%{
for c = 1:200
    pointsY(c) = f(points(c));
end
%}

pointsY = f(points)
figure()
plot(points, pointsY)
title('Plottingator')
xlabel('x')
ylabel('y values')
legend('xes')

function yValues = f(xValues)
    yValues = exp(-(xValues.^2)./5) .* sin(2 .* xValues);
end

