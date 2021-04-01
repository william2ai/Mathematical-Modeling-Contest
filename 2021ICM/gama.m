clear,clc
x=[-4.5,-3.5,-2.5,-1.5,-1,-0.5,0]; y=[0.255556,1.1,2.277778,2.811111,3.833333,2.566667,0];%输入数据
fx=@(b,x)b(1)*gamma(b(2)+(b(3)*x+b(4)*x.^2)./(1+b(5)*x));
b=[0.2639661283  1.398454408  -0.001634047907  1.749278472e-06  0.0005391757245];
for l=1:3
    b=lsqcurvefit(fx,b,x,y);
    b=nlinfit(x,y,fx,b);
end
b
figure(1),clf
plot(x,y,'o','markerfacecolor','k')
hold on
x1=linspace(0,1910);
y1=fx(b,x1);
plot(x1,y1,'r-','linewidth',2)
y1=fx(b,x);
RSS=(y-y1)'*(y-y1)
SSy=var(y)*(length(y)-1)
rsquare=(SSy-RSS)/SSy