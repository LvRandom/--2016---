function x = gauss_seidel(A,b,e,N)
%gauss_seidel��AΪϵ������bΪ����������һ�У�eΪ�������ȣ�NΪ����������
[m,n] = size(A);
D = diag(diag(A));
L = -A+triu(A);
U = -A+tril(A);
inv((D-L))
(D-L)\U
M = eig((D-L)\U)
(D-L)\b'
x = ones(m,1);
x(:,2) = ((D-L)\U)*x(:,1)+(D-L)\b'
k = 2;
while (norm(x(:,k)-x(:,k-1)) > e)
    x(:,k+1) = ((D-L)\U)*x(:,k)+(D-L)\b';
    if k > N
        break;
    end
    k = k+1;
end
k-1