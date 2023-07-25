clc
h = 0.1;
t = -2:h:4;
f = sin(t);

%Exact derivative
dfdt= cos(t);
plot(t,f,'k','Linewidth', 1.2);
hold on, grid on
plot(t,dfdt,'k','Linewidth', 3);
l1 = legend ('Function', 'Exact Derivative');
%set(l1, 'Fontsize', 14)
axis([-2 4 -1.5 1.5])

%Numerical Methods

%Forward 
dfdtF= (sin(t+h)-sin(t))/h;
%Backward
dfdtB= (sin(t)-sin(t-h))/h;
%Centered
dfdtC= (sin(t+h)-sin(t-h))/(2*h);

plot(t,dfdtF,'b','Linewidth',1.2);
plot(t,dfdtB,'g','Linewidth',1.2);
plot(t,dfdtC,'r','Linewidth',1.2);

l2 = legend ('Function', 'Exact Derivative', 'Forward', 'Backward', 'Centered');
set(l2, 'Fontsize', 14)


