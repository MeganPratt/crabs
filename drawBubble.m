function [bubbleGraphics, xBubbleCenter, yBubbleCenter] = drawBubble (xBubble,yBubble,sizeBubble)
bubble = getBubble(sizeBubble);


T = getTranslation(xBubble,yBubble);
bubble = T*bubble;

pt1=bubble(:,1);
pt2=bubble(:,2);
pt3=bubble(:,3);
pt4=bubble(:,4);

xBubbleCenter = bubble(1, 5);
yBubbleCenter = bubble(2, 5);

bubbleGraphics(1)=drawLine (pt1, pt2, 'c');
bubbleGraphics(2)=drawLine (pt2, pt3, 'c');
bubbleGraphics(3)=drawLine (pt3, pt4, 'c');
bubbleGraphics(4)=drawLine (pt4, pt1, 'c');


endfunction
