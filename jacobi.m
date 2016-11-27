function x = jacobi(A,b,e,N)
%�ſɱȵ�������AΪϵ������bΪ����������һ�У�eΪ�������ȣ�NΪ����������
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


