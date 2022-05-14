format long g
a=-0.65;  b=1.1;
x10=-0.5; x20=1;
n1=5;     n2=6;
x=x10; xx=x; yy=f(x); kk=0;
for k=1:n1
  x=x-f(x)/df(x);
  xx=[xx;x]; yy=[yy;f(x)]; kk=[kk;k];
end
res11=[kk,xx,yy]
x1=x;
x=x20; xx=x; yy=f(x); kk=0;
for k=1:n2
  x=x-f(x)/df(x);
  xx=[xx;x]; yy=[yy;f(x)]; kk=[kk;k];
end
res12=[kk,xx,yy]
x2=x;
x1, x2
t=a:(b-a)/1000:b;
plot(t,f(t),'b',x1,0,'ro',x2,0,'ro'), grid on
title(sprintf('x_1=%1.15g,x_2=%1.15g',x1,x2))