function [L,U] = LU(a)
%直接lu分解
[n,m] = size(a);
L = eye(n);
for j = 1:n
    U(1,j) = a(1,j);
end
for i = 2:n
    L(i,1) = a(i,1)/U(1,1);
end
for r = 2:n
    for j = r:n
    S1 = 0;
    for k = 1: r-1
        S1 = S1 + L(r,k)*U(k,j);
    end
        U(r,j) = a(r,j) - S1;
    end
    for i = r+1:n
     S2 = 0;
    for k = 1 : r-1
        S2 = S2 + L(i,k)*U(k,r);
    end
        L(i,r) = (a(i,r) - S2)/U(r,r);
    end
end
