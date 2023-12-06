function [xShark, yShark, thetaShark] = sharkTracking(xCapt, yCapt, xShark, yShark, sharkMove, distFromShark, thetaCapt, mapWidth, mapHeight);
  tempTheta = thetaCapt;
  tempXShark = xShark;
  tempYShark = yShark;
##      if (distFromShark > abs(sharkMove))
         if ((xCapt - xShark) > 0); %if Captain is to the right of the shark or at the same x position
           thetaShark = atan((yCapt-yShark) / (xCapt - xShark)) + pi;
           xShark = xShark + sharkMove*cos(thetaShark);
           yShark = yShark + sharkMove*sin(thetaShark);

         elseif ((xCapt - xShark) < 0); %if Captain is to the left of the shark
           thetaShark = atan((yCapt - yShark) / (xCapt-xShark));
           xShark = xShark + sharkMove*cos(thetaShark);
           yShark = yShark + sharkMove*sin(thetaShark);

         elseif ((xCapt - xShark) == 0)
           if (yCapt > yShark)
             thetaShark = 3*pi/2;
           else
             thetaShark = pi/2;
           endif
         endif

         if (distFromShark <= abs(sharkMove))
            thetaShark = tempTheta;
            xShark = xCapt;
            yShark = yCapt;
         endif
endfunction
