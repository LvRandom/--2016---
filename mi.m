function y = mi(A,x1,e,N)
%ÃÝ·¨
k = 1;
u = 0;
xr = max(abs(x1));
x(:,1) = x1';
alpha = xr;
y(:,1) = x(:,1)./alpha;
x(:,2) = A*y(:,1);
gama = xr;
while abs(gama - u)>= e
    if k<N
        k = k+1;
        u = gama;
        xr = max(abs(x(:,k)));
        alpha = xr;
        y(:,k) = x(:,k)./alpha;
        x(:,k+1) = A*y(:,k);
        gama = xr;
    else
        break;
    end
end
gama


        