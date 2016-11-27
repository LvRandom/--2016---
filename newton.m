function y = newton(xi,x)
%xiΪ��ֵ���ݵ�������ʽ��xΪ���ű�����������Ƶ����ݵ�
n=length(xi);
y = f(xi(1));
for j=2:n
    t=ones(1,1);
    s=ones(1,j);
    for k=1:j
        s(k)=s(k)*xi(k);
    end
    for i=1:(j-1)
        t=t.*(x-xi(i));
    end
    y = y + t*chas(s);
end
simplify(vpa(y))