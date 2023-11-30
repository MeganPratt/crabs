function jelly = getJelly (size)

pt1=[-size;size;1 ];
pt2=[size;size;1 ];
pt3=[size;-size;1 ];
pt4=[-size;-size;1 ];
pt5=[-3*size; -1*size; 1];
pt6=[-3*size; size; 1];

invisNodeJelly = [-2*size; 0; 1];

jelly=[pt1,pt2,pt3,pt4,pt5, pt6, invisNodeJelly];

endfunction
