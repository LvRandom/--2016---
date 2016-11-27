
function [x] = gong_e(n)
%共轭梯度法
%需输入矩阵阶数n
%为系数矩阵A赋值
tic
%为常数列b赋值
n
b(1,1)=2.5;
for i=2:(n/2-1)
    b(i,1)=1.5;
end
b(n/2,1)=1.0;
b(n/2+1,1)=1.0;
for i=(n/2+2):(n-1)
    b(i,1)=1.5;
end
b(n,1)=2.5;
%迭代初始值
x = zeros(n,1);
%精度e
e=10^(-3);
%以下为共轭梯度法的算法
r =b - muti2(x,n);
d = r;
m = dot(r,d)/dot(d,muti2(d,n));
x = x + m*d;
k = 2;
while (all(r) ~= 0) || (norm(r)>e)
    r = b - muti2(x,n);
    beta = -dot(r,muti2(d,n))/dot(d,muti2(d,n));
    d = r + beta*d;
    m = dot(r,d)/dot(d,muti2(d,n));
    x = x + m*d;
end
toc
x;