function x = LDL(a,b)
%LDL'法，输入a为系数矩阵，b为增广矩阵最后一列的转置，y为最后的结果（A要为正定矩阵）
[n,m] = size(a);
d = diag(diag(a));
l = eye(n);
for k = 1:n
    S1 = 0;
    for j = 1:k-1
        S1 = S1 + l(k,j)^2*d(j,j);
    end
    d(k,k) = a(k,k) - S1;
    for i = k+1:n
        S2 = 0;
        for j = 1:k-1
        S2 = S2 + l(i,j)*d(j,j)*l(k,j);
        end
        l(i,k) = (a(i,k) - S2)/d(k,k);
    end
end
d
l
y(1) = b(1);
for k =2:n
    S3 = 0;
    for j = 1:k-1
        S3 = S3 + l(k,j)*y(j);
    end
    y(k) = b(k) - S3;
end
y
x(n) = y(n)/d(n,n);
for k = n-1:-1:1
    S4 = 0;
    for j = k+1:n
        S4 = S4 + l(j,k)*x(j);
    end
    x(k) = y(k)/d(k,k)-S4;
end
