function y =chas(xi)
%xiΪ��ֵ���ݵ��������ʽ
t=0; 
k=length(xi);
for i=1:k
    t = t + f(xi(i))/w(k,xi,i);
end
y = t;