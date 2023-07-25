clc
clear all
syms x;
f=input("请输入需求零解的方程f(x)=(自变量为x,如x^3-x^2-5):   ");
p0=input("请输入牛顿迭代法的初始值p_0：  ");
tol=input("请输入精度E：  ");
maxK=input("请输入最大迭代次数：  ");

[p,k,Y]=NTM(f,p0,tol,maxK);

DP=sprintf("使用牛顿迭代法法迭代%d次，计算%s=0以%g为迭代初始值的解为：%g",k,f,p0,p);
disp(DP);
fprintf("迭代值如下：");
disp(Y);

function [p,k,Y]=NTM(f,p0,tol,maxK)
%p0表示迭代初始值
%f表示要求解的方程
%maxK表示规定的最大迭代次数
%tolr表示允许误差
%k表示最终迭代的次数
%p表示最终迭代的值
    syms x;
    P(1)=p0;
    k=2;
    df=diff(f);     %利用diff()函数计算f(x)的导数

    P(k)=P(k-1)-subs(f,x,P(k-1))/subs(df,x,P(k-1)); %第二次迭代的结果
    while k<=maxK
        err=abs(P(k)-P(k-1))    %err表示相邻的迭代值的差值
        if(err<tol)
            fprintf('迭代%d次即可满足允许误差值退出\n',k-1);
            break;
        end
        k=k+1;
        P(k)=P(k-1)-subs(f,x,P(k-1))/subs(df,x,P(k-1));  %迭代
    end      %共迭代了k-1次
    if(k-1==maxK) 
        disp("超过最大迭代次数！");
    end
    p=P(k); 
    k=k-1;
    Y=P;
end