function Dnum = RichardsonDiff(f,x0,h,max1)

% Differentiation algorithm based on Richardson extrapolation
% f - string input for function y = f(x)
% x0 - value, where the derivative f'(x0) is to be found
% h - minimal step size, all other values are computed for the step sizes 2^(k-1) h
% max1 - maximal number of Richardson iterations
% Dnum - row-vector of numerical (central) derivatives:
% the entry with index k in Dnum corresponds to the derivative of order O(h^(2k))

D = ones(max1,max1); % the matrix for Richardson derivatives 
                                 
for k = 1 : max1
	x = x0 + 2^(k-1)*h;
	f1 = eval(f);
	x = x0 - 2^(k-1)*h;
	f2 = eval(f);
    D(k,1) = (f1-f2)/(2^k*h); % first approximation for the central difference
end
                   
for k = 2 : max1 % compute k-th order central differences
    
    for kk = 1 : (max1-k+1) % the matrix of Richardson derivatives is triangular!
                        
        D(kk,k) = D(kk,k-1)+(D(kk,k-1) - D(kk+1,k-1))/(4^(k-1)-1); % see the Richardson algorithm
    end 
        
end

% define the vector Dnum for numerical difference approximations
Dnum = D(1,:); 
