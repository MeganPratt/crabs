function handle = drawLine (p, q, myColor)

p;
q;
myColor;
%{
drawLine draws a line from point p to point q with color 'color'
%}

%extract the x coordinates
x=[p(1); q(1)];

%extract the y corrdinates
y=[p(2); q(2)];

handle = plot(x,y,myColor);

set(handle, "LineWidth", 3);

endfunction
