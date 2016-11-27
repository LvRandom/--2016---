function [x,l,u] = Catch(A,d)
%三对角方程的追赶法，要使用必需使系数矩阵满足一定条件
[n,m] = size(A);
c = diag(A,1);
b = diag(A,0);
a = diag(A,-1);
u(1) = b(1);
for i = 2:n
    l(i-1) = a(i-1)/u(i-1);
    u(i) = b(i) - c(i-1)*l(i-1);
end
l;
u;
y(1) = d(1);
for k = 2:n
    y(k) = d(k) - l(k-1)*y(k-1);
end
y
x(n) = y(n)/u(n);
for k = n-1:-1:1
    x(k) = (y(k) - c(k)*x(k+1))/u(k);
end
l = eye(n) + diag(l,-1)
u = diag(u) + diag(c,1)

    
