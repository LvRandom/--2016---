function y = newton(xi,x)
%xi为插值数据点向量形式，x为符号变量或所求近似的数据点
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