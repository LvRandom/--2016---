function y =chas(xi)
%xi为插值数据点的向量形式
t=0; 
k=length(xi);
for i=1:k
    t = t + f(xi(i))/w(k,xi,i);
end
y = t;