function y = w(k,xi,i)
t=1;
for j=1:k
    if(j~=i)
        t=t*(xi(i)-xi(j));
    end
end
y=t;