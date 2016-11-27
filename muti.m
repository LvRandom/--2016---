function y = muti(b,n)
y = [];
sum = 0;
for i = 1:n
    sum = 0;
    for k = 1:n
        if k == i
            sum = sum+3*b(k);
        end
        if abs(k - i) == 1
                sum = sum+(-1)*b(k);
        end
         if (k + i == n + 1)&&(i ~= n/2)&&(i ~= n/2 + 1)
                sum = sum + (1/2)*b(k);
            
        end
    end
    y(i) = sum;
end
y = y';
            
