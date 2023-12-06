function [xJelly,yJelly,thetaJelly] = moveJelly(level, x, y, theta, size, height, width);
jellyMove = 50;
step = jellyMove + level;
% return a y-position increased by step, but return the same x and theta values
xJelly = x;
yJelly = y + step;
thetaJelly = theta;
if (yJelly > height-3*size)
% set the returned y-value to be size and return a new random x value between 0 and width%
xJelly = rand*width;
yJelly = size;
endif
endfunction
