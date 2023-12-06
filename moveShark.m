function [xShark, yShark, sharkMove] = moveShark (level, x, y, theta, size, height, width, sharkMove)
##sharkMove = -40*(0.5*(level-5);
sharkMove = 1.2*sharkMove^2;
xShark = x+sharkMove;
yShark = y;
thetaShark = theta;

if (xShark <= 0)
  xShark = width;
  yShark = y;
endif

endfunction

