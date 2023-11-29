function [fill2, xHeartCenter, yHeartCenter] = drawHeart(xHeart, yHeart, sizeHeart, thetaHeart)

[heart, heart2] = getHeart(sizeHeart);

R = getRotation(thetaHeart);
heart = R*heart;
heart2 = R*heart2;

T = getTranslation(xHeart,yHeart);
heart = T*heart;
heart2 = T*heart2;

pt1=heart(:,1);
pt2=heart(:,2);
pt3=heart(:,3);
pt4=heart(:,4);
pt5=heart(:,5);
pt6=heart(:,6);

fill2 = fill(heart(1,:), heart(2,:),'r');

xHeartCenter = heart2(1, 1);
yHeartCenter = heart2(2, 1);


endfunction
