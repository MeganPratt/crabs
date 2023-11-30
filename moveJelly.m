function  [xJelly, yJelly, thetaJelly] = moveJelly (level, x, y, theta, size, height, width)

jellyMove = 50;
dStep = jellyMove + level;

xJelly = x;
yJelly = y + dStep;
thetaJelly = theta;

if ( yJelly > height - 3*size)

xJelly = rand*width;
yJelly = size;

endif

endfunction
