ax=-5,bx=4,ay=-4,by=2;
x=ax:(bx-ax)/1000:bx; y=ay:(by-ay)/1000:by;
[xx,yy]=meshgrid(x,y);
z=f1(xx,yy);
contour(x,y,z,[0,0],'b'), grid on
z=f2(xx,yy);
hold on
contour(x,y,z,[0,0],'g'), grid on
hold off
