function mapCheck = isCaptOnMap (x,y,width,height)

if(x>0 && x<width && y>0 && y<height)
  mapCheck = true;
else
  mapCheck = false;
endif

endfunction

