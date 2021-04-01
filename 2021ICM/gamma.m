
clear all;
clc;
data = xlsread('data.xls','sheet1');   

[y x]=hist(data,13);   
figure('Color','w');
h=bar(x,y);            
set(h,'EdgeColor',[0.5 0.5 0.5],'FaceColor',[0.5 0.5 0.5],'linewidth',2);        
hold on;                                                                           

p = gamfit(data,0.05);
fun = @(p,x) 1./(Gamma(p(1)).*(p(2).^p(1))).*(x.^(p(1)-1)).*exp(-(x./p(2)));          
[p,r,j,covb,mse] = nlinfit(x,y,fun,[p(1),p(2)]);                  
yfit=fun(p,x);            
plot(x,yfit,'r','linewidth',2);

hold off;
%xlim([min(x) max(x)]);   %xlim([xmin xmax])  sets the axis limits in the current axes to the specified values.
xlabel('time');
ylabel('频数');
legend('统计数据',['对数正态分布:\mu=' num2str(p(1)) ',\sigma=' num2str(p(2))]);