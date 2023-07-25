function dy = lorenz(t,y,sigma,beta,rho)
% Search for lorenz ode on the Internet to learn more
% dx/dt = σ ( y − x ), dy/dt = x(r - z) − y, dz/dt = xy − bz 
% y(1), Y(2) and y(3) below represents x, y and z, respectively 
% r represents rho and b represents beta
% y is a three dimensional state-vector that changes over time
dy = [
sigma*(y(2)-y(1));
y(1)*(rho-y(3))-y(2);
y(1)*y(2)-beta*y(3);
];