function xi = chazhishuju(a,b,n)
%a,b为区间的左右端点值，‘n’为'n'次插值多项式
h=(b-a)/n;
for i=1:n+1
    xi(i)=a+(i-1)*h;
end