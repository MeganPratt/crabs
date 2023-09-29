function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
% xCapt did = 1000
% yCapt did = 500;
yCapt = 900;
% thetaCapt was = -pi/2
thetaCapt = (3*pi)/2;
sizeCapt = 50;
% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
%*******************************************************
captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
endfunction

