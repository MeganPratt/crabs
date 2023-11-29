function [xBubble, yBubble] = moveBubble (level,x,y,size,height,width)
  dStep = 20 + level;
  % move bubble
 yBubble = y - dStep;
 xBubble = x;

if(yBubble - 2*size < 0 )
 yBubble = height - 2*size;
 xBubble = rand*width ;
 endif

endfunction
