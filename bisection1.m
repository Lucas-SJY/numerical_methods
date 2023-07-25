
%Initialization
x = 0.5;
max_iter_num = 10; %Maximum Iteration Number
counter = 0; %Iteration counter
tol = 0.05; %Tolerance

while counter < max_iter_num
    counter = counter + 1;
    x_new = x - f(x) / df(x) %Evaluation with Newton Method
    %Break if tolerance or maximum iteration number met
    if abs(x_new-x) < tol || counter == max_iter_num
        sprintf('Esimated Root at %f',x_new)
        sprintf('Number of attempts: %i',counter)
        break
    end
    x = x_new; %Update x
end

%Calculate f'(x)
function dy = df(x)
    dy = 3*x^2-58*x+230;
end

%Calculate f(x)
function y = f(x)
    y = x^3-29*x^2+230*x+200;
end


