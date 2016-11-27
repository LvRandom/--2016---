function [result,k]=fanmifa(A,gama,x,e,N)
%���ݷ������gama�����һ������ֵ��AΪ���ľ���xΪ��ʼ������eΪ����ޣ�NΪ��������������
k = 1;
u = 1;
[n,m] = size(A);
[L,U]=LU(A-gama*eye(n));
result = [];
while (k<=N)
    [alpha,r]= max(x);
    y = x./alpha;
    z = L\y;
    x = U\z;
    beta = x(r);
    result(k,[1:n]) = x';
    result(k,n+1) = 1/beta+gama;
    if abs(1/beta - 1/u)<e
        gama = gama + 1/beta;
        break;
    end
    k = k+1;
    u = beta;
end
k