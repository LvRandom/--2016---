
function [x] = gong_e(n)
%�����ݶȷ�
%������������n
%Ϊϵ������A��ֵ
tic
%Ϊ������b��ֵ
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
%������ʼֵ
x = zeros(n,1);
%����e
e=10^(-3);
%����Ϊ�����ݶȷ����㷨
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