function  [xJelly, yJelly, thetaJelly] = moveJelly (level, x, y, theta, size, height, width)

jellyMove = 50;
dStep = jellyMove + level;

xJelly = x;
yJelly = y + dStep;
thetaJelly = theta;

if ( yJelly > height - 10*size)

yJelly = size;
xJelly = rand*width;

endif

endfunction
