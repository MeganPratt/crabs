function [jellyHandle, xJellyNode, yJellyNode] = drawJelly (x,y,theta,size);

jelly = getJelly(size);

R = getRotation(theta);
jellyRotated = R*jelly;

T = getTranslation(x,y);
jelly = T*jellyRotated;

pt1=jelly(:,1);
pt2=jelly(:,2);
pt3=jelly(:,3);
pt4=jelly(:,4);
pt5=jelly(:,5);
pt6=jelly(:,6);

xJellyNode = jelly(1, 7);
yJellyNode = jelly(2, 7);

jellyHandle(1)=drawLine(pt1,pt2,'m');
jellyHandle(2)=drawLine(pt2,pt3,'m');
jellyHandle(3)=drawLine(pt3,pt4,'m');
jellyHandle(4)=drawLine(pt4,pt1,'m');
jellyHandle(5)=drawLine(pt4,pt5,'m');
jellyHandle(6)=drawLine(pt1,pt6,'m');

endfunction
