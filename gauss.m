function y = gauss(a,b)
%输入a为系数矩阵，b为增广矩阵最后一列的转置，y为最后的结果（gauss法）
n = size(a);
k = 1;
S = 0;
while k <= n(1)-1
if (a(k,k) ~= 0)
    for i = k+1:n(1)
        li = a(i,k)/a(k,k);
        b(i) = b(i)-li*b(k);
        for j = k:n(1)
            a(i,j) = a(i,j) - li*a(k,j);
        end
    end
    [a,b']
    k = k + 1;
end
end
if a(n(1),n(1)) == 0
    disp('wrong')
else
    b(n(1)) = b(n(1))/a(n(1),n(1));
    for k = n(1)-1:-1:1
        S = 0;
        for l = k+1:n(1)
            S = S + a(k,l)*b(l);
        end
        b(k) = (b(k) - S)/a(k,k);
    end
end
[a,b']
y = b;
