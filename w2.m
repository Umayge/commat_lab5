format long g
ax=-5; bx=5; ay=-4; by=4; 
x10=0; y10=1.1; n1=4; 
x20=1.6; y20=-2.8; n2=7; 
x=x10; y=y10; 
xx=x; yy=y; 
z1=f1(x,y); z2=f2(x,y); kk=0;
for k=1:n1
r=[x;y]; r=r - dff(x,y)\ff(x,y);
x=r(1); y=r(2);
xx=[xx;x]; yy=[yy;y]; kk=[kk;k];
z1=[z1; f1(x,y)]; z2=[z2; f2(x,y)];
end
res21=[kk, xx, yy, z1, z2] 
x=x20; y=y20; 
xx=x; yy=y; 
z1=f1(x,y); z2=f2(x,y); kk=0;
for k=1:n2
r=[x;y]; r=r - dff(x,y)\ff(x,y);
x=r(1); y=r(2);
xx=[xx;x]; yy=[yy;y]; kk=[kk;k];
z1=[z1; f1(x,y)]; z2=[z2; f2(x,y)];
end
res22=[kk, xx, yy, z1, z2] 
[n,m]=size(res21); 
x21=res21(n,2), y21=res21(n,3) 
[n,m]=size(res22);
x22=res22(n,2), y22=res22(n,3)
ax=-5; bx=5; ay=-4; by=4;
x=ax:(bx-ax)/1000:bx; y=ay:(by-ay)/1000:by;
[xx,yy]=meshgrid(x,y);
z=f1(xx,yy);
contour(x,y, z, [0,0], 'b'), grid on
z=f2(xx,yy);
hold on
contour(x,y, z, [0,0], 'g'), grid on
plot(x21,y21,'ro', x22,y22,'ro')
title(sprintf('x_1=%1.15g,y_1=%1.15g,x_2=%1.15g,y_2=%1.15g',x21,y21,x22,y22))
hold off