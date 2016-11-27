function x = jacobi(A,b,e,N)
%雅可比迭代法，A为系数矩阵，b为增广矩阵最后一列，e为收敛精度，N为最大迭代次数
[m,n] = size(A);
D = diag(diag(A));
B = eye(m)-D\A
M = eig(B)
g = D\b'
x = ones(m,1);
x(:,2) = B*x(:,1)+g;
k = 2;
while (norm(x(:,k)-x(:,k-1)) > e)
    x(:,k+1) = B*x(:,k)+g;
    if k > N
        break;
    end
    k = k+1;
end
k-1


