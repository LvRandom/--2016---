function xi = chazhishuju(a,b,n)
%a,bΪ��������Ҷ˵�ֵ����n��Ϊ'n'�β�ֵ����ʽ
h=(b-a)/n;
for i=1:n+1
    xi(i)=a+(i-1)*h;
end