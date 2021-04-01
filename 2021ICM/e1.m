syms sum;
syms p;
syms u;
a=betarnd(1,10)
b=betarnd(1,10)
p(i)=(t.^(a-1).*(1-t).^(b-1))/int(((u(i).^(a-1)).*((1-u(i)).^(b-1))),0,1);

for i=1:6
    sum=sum+(p(i)-y(i))^2
end