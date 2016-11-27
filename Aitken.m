function y = Aitken(A,x1,e,N)
k = 1;
alpha(1) = 0;
alpha(2) = 0;
gama(1) = 1;
xr = max(abs(x1));
x(:,1) = x1';
y(:,1) = x(:,1)./xr;
x(:,2) = A*y(:,1);
 alpha(3)= xr;
 gama(2) = alpha(1)-(alpha(2)-alpha(1))^2/(alpha(3)-2*alpha(2)+alpha(1));
while abs(gama(2) - gama(1))>= e
    if k<N
        k = k+1;
       alpha(1) = alpha(2);
       alpha(2) = alpha(3);
       gama(1) = gama(2);
        xr = max(abs(x(:,k)));
       y(:,k) = x(:,k)./xr;
       x(:,k+1) = A*y(:,k);
       alpha(3)= xr;
       gama(2) = alpha(1)-(alpha(2)-alpha(1))^2/(alpha(3)-2*alpha(2)+alpha(1));
       gama(2)
    else
        break;
    end
end
x

