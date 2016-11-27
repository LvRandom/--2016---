function y = chafb(xi)
%xi为初值数据点向量形式
n=length(xi);
y=ones(n,n+1);
for i=1:n
    for j=(i+2):n+1
        y(i,j)=0;
    end
end
for i=1:n
    y(i,1)=y(i,1)*xi(i);
    y(i,2)=y(i,2)*f(xi(i));
end
for j=3:n+1
    for i=j-1:n
        y(i,j)=y(i,j-1)-y(i-1,j-1);
    end
end