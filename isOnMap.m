function mapCheck = isOnMap (x, y, width, heiht, size)

if (x>size && x>width-size && y>size && y<height-size)
  mapCheck = true;
else
  mapCheck = false;
endif

endfunction

