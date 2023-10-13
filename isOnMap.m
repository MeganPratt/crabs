function inBounds = isOnMap (x, y, width, height)
% Created Ken Owens 2023-08-18
%This funciton checks if a point is within the map boundary
%It returns a 1 if it is and 0 if in is not.

if( x > 0 && x < width && y > 0 && y < height)
inBounds=1;
else
inBounds=0;
endif

endfunction
