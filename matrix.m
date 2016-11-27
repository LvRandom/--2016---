A = []
n = 10


for i=1:n
    for j=1:n
        if (i==j)
            A(i,j) = 3;
        elseif (abs(i-j) == 1)
            A(i,j) = -1;
        elseif ( (i+j)==(n+1) && i~=(n/2) && i~=(n/2+1) )
            A(i,j)=1/2;
        else A(i,j)=0;
        end
    end
end
b = []
b(1,1)=2.5;
for i=2:(n/2-1)
    b(i,1)=1.5;
end
b(n/2,1)=1.0;
b(n/2+1,1)=1.0;
for i=(n/2+2):(n-1)
    b(i,1)=1.5;
end
b(n,1)=2.5;
