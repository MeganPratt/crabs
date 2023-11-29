function [heart, heart2] = getHeart(sizeHeart)

pt1 = [-2*sizeHeart; 0; 1];
pt2 = [0; 2*sizeHeart; 1];
pt3 = [2*sizeHeart; 2*sizeHeart; 1];
pt4 = [1*sizeHeart; 0; 1];
pt5 = [2*sizeHeart; -2*sizeHeart; 1];
pt6 = [0; -2*sizeHeart; 1];

invisNodeHeart = [0; 0; 1];

heart = [pt1, pt2, pt3, pt4, pt5, pt6];
heart2 = [invisNodeHeart];
endfunction
