function [xCrab, yCrab, thetaCrab] = moveCrab (cmd, x, y, theta, height, width, size)

dStep = 50;
dTheta = pi/6;

% move left
if (cmd == "j")
xTemp = x + dStep*sin(theta);
yTemp = y - dStep*cos(theta);
thetaCrab = theta;

if(isOnMap (xTemp, yTemp, width, height))
  xCrab = xTemp;
  yCrab = yTemp;
else
  xCrab = x;
  yCrab = y;
endif

% move right
elseif (cmd == "l")
xTemp = x - dStep*sin(theta);
yTemp = y + dStep*cos(theta);
thetaCrab = theta;

if(isOnMap (xTemp, yTemp, width, height))
  xCrab = xTemp;
  yCrab = yTemp;
else
  xCrab = x;
  yCrab = y;
endif

% move back
elseif (cmd == "k")
xTemp = x - dStep*cos(theta);
yTemp = y - dStep*sin(theta);
thetaCrab = theta;

if(isOnMap (xTemp, yTemp, width, height))
  xCrab = xTemp;
  yCrab = yTemp;
else
  xCrab = x;
  yCrab = y;
endif

% rotate right
elseif (cmd == "o")
xCrab = x;
yCrab = y;
thetaCrab = theta + dTheta;

% rotate left
elseif (cmd == "i")
xCrab = x;
yCrab = y;
thetaCrab = theta - dTheta;

else
xCrab = x;
yCrab = y;
thetaCrab = theta;

endif

endfunction
