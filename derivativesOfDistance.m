clc
%Distances - function as a table of data
t = 4:0.2:8;
x = [-5.87 -4.23 -2.55 -0.89 0.67 2.09 3.31 4.31 5.06 ...
5.55 5.78 5.77 5.52 5.08 4.46 3.72 2.88 2.00 1.10 0.23 -0.59];

%Velocities and Accelarations 
%First order abd second order derivatives of distance
vel = derivative(t,x);
acc = derivative(t,vel);

%Plot Distance, Velocities and Accelerations as Subplots
subplot (3,1,1)
plot(t,x)
subplot (3,1,2)
plot(t,vel)
subplot (3,1,3)
plot(t,acc)
