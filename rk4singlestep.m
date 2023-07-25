function yk1 = rk4singlestep(fun,dt,tk,yk)

% rk4single-step is derived from a straight forward extension
% of Forward Euler. 
% Please note the recursive nature of the implementation
% f4, f3 and f2 are defined by f3, f2 and f1 respectively
% output is a weighted-sum of f1, f2, f3, and f4

f1 = fun(tk,yk);
f2 = fun(tk+dt/2,yk+(dt/2)*f1);
f3 = fun(tk+dt/2,yk+(dt/2)*f2);
f4 = fun(tk+dt,yk+dt*f3);

yk1 = yk + (dt/6)*(f1+2*f2+2*f3+f4);