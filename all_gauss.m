function [y,p] = all_gauss(a,b)
%����aΪϵ������bΪ����������һ�е�ת�ã�yΪ���Ľ����pΪ���е��û�����ȫ��Ԫ�ط���
n = size(a);
k = 1;
S = 0;
p = eye(n(1));
while k <= n(1)-1
    %���л�������
      [x,y] = find(a == max(max(a(k:n(1),k:n(1)))));
      a([k,x],:) = a([x,k],:);
      a(:,[k y]) = a(:,[y k]);
      p(:,[k y]) = p(:,[y k]);
      b([k x]) = b([x k]);
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