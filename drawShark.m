function [sharkGraphics, xSharkNode, ySharkNode] = drawShark (x, y, theta, size)
shark = getShark(size);
R = getRotation(theta);
sharkRotated = R*shark;
T = getTranslation(x,y);
shark = T*sharkRotated;

pt1=shark(:,1);
pt2=shark(:,2);
pt3=shark(:,3);
pt4=shark(:,4);
pt5=shark(:,5);
pt6=shark(:,6);
pt7=shark(:,7);
pt8=shark(:,8);
pt9=shark(:,9);
pt10=shark(:,10);
pt11=shark(:,11);
pt12=shark(:,12);
pt13=shark(:,13);
pt14=shark(:,14);
pt15=shark(:,15);
pt16=shark(:,16);
pt17=shark(:,17);
pt18=shark(:,18);
pt19=shark(:,19);
pt20=shark(:,20);
pt21=shark(:,21);
pt22=shark(:,22);
pt23=shark(:,23);
pt24=shark(:,24);
pt25=shark(:,25);
pt26=shark(:,26);

xSharkNode = shark(1, 22);
ySharkNode = shark(2, 22);

sharkGraphics(1)=drawLine(pt1,pt2,'k');
sharkGraphics(2)=drawLine(pt2,pt3,'k');
sharkGraphics(3)=drawLine(pt3,pt4,'k');
sharkGraphics(4)=drawLine(pt4,pt5,'k');
sharkGraphics(5)=drawLine(pt5,pt6,'k');
sharkGraphics(6)=drawLine(pt6,pt7,'k');
sharkGraphics(7)=drawLine(pt7,pt8,'k');
sharkGraphics(8)=drawLine(pt8,pt9,'k');
sharkGraphics(9)=drawLine(pt9,pt10,'k');
sharkGraphics(10)=drawLine(pt10,pt11,'k');
sharkGraphics(11)=drawLine(pt11,pt12,'k');
sharkGraphics(12)=drawLine(pt12,pt13,'k');
sharkGraphics(13)=drawLine(pt13,pt14,'k');
sharkGraphics(14)=drawLine(pt14,pt15,'k');
sharkGraphics(15)=drawLine(pt15,pt16,'k');
sharkGraphics(16)=drawLine(pt16,pt17,'k');
sharkGraphics(17)=drawLine(pt17,pt18,'k');
sharkGraphics(18)=drawLine(pt18,pt19,'k');
sharkGraphics(19)=drawLine(pt19,pt20,'k');
sharkGraphics(20)=drawLine(pt20,pt21,'k');
sharkGraphics(21)=drawLine(pt21,pt22,'k');
sharkGraphics(22)=drawLine(pt22,pt23,'k');
sharkGraphics(23)=drawLine(pt23,pt24,'k');
sharkGraphics(24)=drawLine(pt24,pt25,'k');
sharkGraphics(25)=drawLine(pt25,pt26,'k');
sharkGraphics(26)=drawLine(pt26,pt1,'k');



endfunction
