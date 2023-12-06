function [crabGraphics, xNode, yNode, r, g, b] = drawCrab (xCrab,yCrab,thetaCrab,sizeCrab,crabColor, r, g, b)
% This function draws the crab by rotating and shifting the crab
% as it appears in getCrab.m where it is at the origin with zero heading.
%get crab at the origin
crab = getCrab(sizeCrab);
%rotate crab
R = getRotation(thetaCrab);
crabRotated = R*crab;
%shift crab to new location
T = getTranslation(xCrab,yCrab);
crab = T*crabRotated;
%get crab points


pt1=crab(:,1);
pt2=crab(:,2);
pt3=crab(:,3);
pt4=crab(:,4);
pt5=crab(:,5);
pt6=crab(:,6);
pt7=crab(:,7);
pt8=crab(:,8);
pt9=crab(:,9);
pt10=crab(:,10);

%extract x coord and y cood of center points
xNode = crab(1,11);
yNode = crab(2, 11);

%draw the crab body
crabGraphics(1) = drawLine(pt1,pt2, "k");
crabGraphics(2) = drawLine(pt2,pt3, "k");
crabGraphics(3) = drawLine(pt3,pt4, "k");
crabGraphics(4) = drawLine(pt4,pt1, "k");
%draw crab pinchers
crabGraphics(5) = drawLine(pt1,pt5, "k");
crabGraphics(6) = drawLine(pt4,pt6, "k");
% draw legs
crabGraphics(7) = drawLine(pt2,pt7, "k");
crabGraphics(8) = drawLine(pt7,pt8, "k");
crabGraphics(9) = drawLine(pt3,pt9, "k");
crabGraphics(10) = drawLine(pt9,pt10, "k");


if(crabColor==1)
  r = rand;
  g = rand;
  b = rand;
  endif
for (i = 1 : length(crabGraphics))
    set(crabGraphics(i), "color", [r g b]);
endfor

endfunction

