function bubble = getBubble(sizeBubble)
pt1 = [0; 3*sizeBubble;1];
pt2 = [3*sizeBubble;0;1];
pt3 = [0;-3*sizeBubble;1];
pt4 = [-3*sizeBubble;0;1];

bubbleCenter = [0; 0; 1];

bubble = [pt1,pt2,pt3,pt4, bubbleCenter];
endfunction
