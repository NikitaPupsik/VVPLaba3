clear all
x =-5:0.01:5;
f1=power(sin(x), 2)+power(cos(x),2);
f2=cos(x)+power(x,2);
f3=power(x,2)+log10(x);
plot(x,f1,x,f2,x,f3)
title('Графики');


figure
subplot(3, 1, 1);
plot(x, f1);
legend('power(sin(x), 2)+power(cos(x),2)');

subplot(3, 1, 2);
plot(x, f2);
legend('cos(x)+power(x,2)');

subplot(3, 1, 3);
plot(x, f3);
legend('power(x,2)+log10(x)');

y1=((1+abs(x)))/power((1+x+power(x, 2)),1/3).*x<=-1;
y2=(1+power(cos(x), 4))/(3+x).*x>-1;
y3=y1+y2;

for i= 1:1001
if x(i)<=-1
y3(i)=(1+abs(x))/power((1+x+power(x, 2)),1/3);
else
y3(i)=(1+power(cos(x), 4))/(3+x);
end
end
figure
subplot(2,1,1);
plot(x,y3)
legend('С использованием расширенных возможностей MATLAB')
xlabel('Ось x')
ylabel('Ось y')
subplot(2,1,2);
plot(x,y3)
legend('С использованием стандартного подхода')
xlabel('Ось x')
ylabel('Ось y')





