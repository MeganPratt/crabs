function [thetaCrab] = getAngle(xNet, yNet, xCrab, yCrab);
     if ((xNet - xCrab) >= 0); %if Captain is to the right of the crab or at the same x position
       thetaCrab = atan((yNet-yCrab) / (xNet - xCrab));

     elseif ((xNet - xCrab) < 0); %if Captain is to the left of the crab
       thetaCrab = atan((yNet - yCrab) / (xNet - xCrab)) + pi;
     endif

endfunction
