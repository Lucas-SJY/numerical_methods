clc

% Lorenz's parameters (chaotic weather modelling)
sigma = 10;
beta = 8/3;
rho = 28;

% Initial condition
y0=[-8; 8; 27];

% Compute trajectory 
dt =0.01;
tspan=0:dt:4; 
% First use our own rk4singlestep function to solve the Lorenz ODE; 
% plot in Blue
Y(:,1)=y0;
yk = y0;
for i=1:length(tspan)
    time = i*dt;
    yykplus1 = rk4singlestep(@(t,y)lorenz(t,y,sigma,beta,rho),dt,time,yk);
    Y = [Y yykplus1];
    yk = yykplus1;
end
plot3(Y(1,:),Y(2,:),Y(3,:),'b')
hold on
% Then, use MATLAB ode45 (R-K 4th order) function 
% Plot in Red
[t,y] = ode45(@(t,y)lorenz(t,y,sigma,beta,rho),tspan,y0);
plot3(y(:,1),y(:,2),y(:,3),'r')
% Note that rk4singlestep and ode45 are pretty close to each other