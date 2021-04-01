syms u;

y=[0.742222222,1.004444445,1.035555555,0.862222222,0.662222222,0];
t=[0.25,0.4,0.55,0.7,0.85,1];
a=1:0.01:10;
b=1:0.01:10;
p={};
r={};
for i=1:0.01:10
    for j =1:0.01:10
        for k=1:1:6
            p{k}=(t(k)^(a(i)-1)*(1-t(k))^(b(j)-1))/int(((u^(a(i)-1))*((1-u)^(b(j)-1))),0,1);
            r{k}=p{k}-y;
        end
        R=r(1)*R(1)+r(2)*R(2)+r(3)*R(3)+r(4)*r(4)+r(5)*r(5)+r(6)*r(6);
        Rr=1000008;
        if R<=Rr
            Rr=R;
            A=a;
            B=b;
        end
    end
end
