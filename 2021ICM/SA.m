ezplot('2/(sqrt(2*pi)*0.4)*exp(-2*(x-0.75)^2/0.16)',[-1,2])
a=-1:0.01:2;
b=2/(sqrt(2*pi)*0.4)*exp(-2*(a-0.72058824).^2/0.16);
hold on
scatter(a,b,'g')