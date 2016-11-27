function [x] = cgm(A,b,x,e)
r(:,1) =b - A*x;
d(:,1) = r(:,1);
m(1) = dot(r(:,1),d(:,1))/dot(d(:,1),A*d(:,1));
x(:,2) = x(:,1) + m(1)*d(:,1);
k = 2;
while (all(r(:,k-1) ~= 0)) || (norm(r(:,k-1))>e)
    r(:,k) = b - A*x(:,k);
    beta(k-1) = -dot(r(:,k),A*d(:,k-1))/dot(d(:,k-1),A*d(:,k-1));
    d(:,k) = r(:,k) + beta(k-1)*d(:,k-1);
    m(k) = dot(r(:,k),d(:,k))/dot(d(:,k),A*d(:,k));
    x(:,k+1) = x(:,k) + m(k)*d(:,k);
    k = k+1;
end
r

d