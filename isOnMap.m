function [mapCheck, x, y] = isOnMap (x,y,width,height,size)
if(x>size && x<width-size && y>size && y<height-size)
  mapCheck = true;
else
  mapCheck = false;
endif

endfunction

