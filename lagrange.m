function y =lagrange(xi,yi,x)
%�������ղ�ֵ����ʽ
n = length(xi);
m = length(x);
y = 0;
for i=1:n
    t=ones(1,length(x));
    for j=1:n
        if(j~=i)
            t = t.*(x-xi(j))/(xi(i)-xi(j));
        end
    end
    y = y + t*yi(i);
end