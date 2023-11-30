function [xCrab, yCrab] = moveCrab(xNet, yNet, xCrab, yCrab, crabStep, width, height, size);

if ((xNet - xCrab) >= 0); %if Captain is to the right of the crab or at the same x position
  xTemp = xCrab - crabStep*cos(thetaCrab);
  yTemp = yCrab - crabStep*sin(thetaCrab);

elseif ((xNet - xCrab) < 0); %if Captain is to the left of the crab
  xTemp = xCrab - crabStep*cos(thetaCrab);
  yTemp = yCrab - crabStep*sin(thetaCrab);

endif

if (isOnMap(xTemp, yTemp, width, height, size) )
  xCrab = xTemp;
  yCrab = yTemp;
else
  xCrab = xCrab;
  yCrab = yCrab;
endif

endfunction

