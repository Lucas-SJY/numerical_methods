clc
x = -10:.01:10;
% Plot sin(x) in thick black line
y = sin(x);
plot(x, y, 'k', 'linewidth', 2)
axis([-10, 10, -10, 10])
grid on, hold on

% First Order - Taylor Expand to First Order term, sin(x) = x
P = [1 0]; % x 
yT1 = polyval(P,x);
% Plot First Order Taylor approximation - blue straight line 
% matches briefly near x=0
plot(x, yT1, 'b--', 'linewidth', 1.2);

%Third Order - Taylor Expand to Third Order terms
P = [-1/factorial(3) 0 1 0]; % -1/3!(x^3) + x
yT3 = polyval(P,x);
% Plot Third Order Taylor approximation - red curve
% matches with sin(x) better near x=0
plot(x, yT3, 'r--', 'linewidth', 1.2);

% Fifth Order - Taylor Expand to Fifth Order terms
P = [1/factorial(5) 0 -1/factorial(3) 0 1 0]; % 1/5!(x^5) - 1/3!(x^3) + x
yT5 = polyval(P,x);
% Plot Fifth Order Taylor approximation - green curve
% matches with sin(x) even better near x=0
plot(x, yT5, 'g--', 'linewidth', 1.2);


% You can continue to add 7th, 9th ... order terms to see that the 
% the curve gets a better approximation of sin(x) around x=0
