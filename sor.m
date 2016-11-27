function [x,k] = sor(A,b,omega,tol)
%sor��AΪϵ������bΪ����������һ�У�tolΪ�������ȣ�100Ϊ����������
D = diag(diag(A));
L = D-tril(A);
U = D - triu(A);
(D-omega*L)\(omega*U+(1-omega)*D)
M=eig((D-omega*L)\(omega*U+(1-omega)*D))
inv(D-omega*L)*omega*b
x(:,1) = ones(size(b));
for k = 2:100
    x(:,k) = (D-omega*L)\(omega*b+(1-omega)*D*x(:,k-1)+omega*U*x(:,k-1));
    error = norm(b-A*x(:,k))/norm(b);
    if error<tol
        break
    end
end
k-1

