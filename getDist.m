function dist = getDist (netNodeX, netNodeY, xCrabNode, yCrabNode)

  dist = sqrt((netNodeX - xCrabNode)^2 + (netNodeY - yCrabNode)^2);

endfunction
