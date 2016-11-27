function y =lagrange(xi,yi,x)
%拉格朗日插值多项式
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