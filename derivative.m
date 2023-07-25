function dx = derivative(x,y)
n = length(x);

%First Point - We can only use Forwrd Difference
dx(1)=(y(2)-y(1))/(x(2)-x(1));

%Points in the middle - Centered Difference is OK
for i=2:n-1
dx(i)=(y(i+1)-y(i-1))/(x(i+1)-x(i-1));
end

%Last Point - We can only use Backward Difference
dx(n)=(y(n)-y(n-1))/(x(n)-x(n-1));