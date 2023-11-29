function crabs (level)
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

numCrabs = level;
numJelly = level;

% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 900;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;
crabsCaught = 0;

% Initialize crab location, heading and size
xCrab = rand(1,numCrabs)*mapWidth;
yCrab = 3*mapHeight/4 + rand(1,numCrabs)*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
crabsCaught = 0;
sizeCrab = 50;
isCrabCaught = zeros(1,numCrabs);

%initialize jellyfish
xJelly = rand(1,numJelly)*mapWidth;
yJelly = rand(1,numJelly)*mapHeight;
thetaJelly = ones(1,numJelly)*(-pi/2);
sizeJelly = 25;
jellySting = 2;

% Draw initial captain, crab, and jellyfish
[captainGraphics, xNet, yNet] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
  %draw crabs
  for k=1:numCrabs
      crabGraphics(:,k) = drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
  endfor
 %draw jelly
  for k=1:numJelly
	    jellyGraphics(:,k) = drawJelly(xJelly(k), yJelly(k), thetaJelly(k), sizeJelly);
	endfor


% print health status
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), ...
strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


%%%%%%%%%%%%%%%%%%% main loop %%%%%%%%%%%%%%%%%%%%%%%%
while(1)

% erase old jellyfish
for i=1:numJelly
  delete(jellyGraphics(:,i))


% move jellyfish
[xJelly(i),yJelly(i),thetaJelly(i)] = moveJelly(level, xJelly(i), yJelly(i),thetaJelly(i), sizeJelly, mapHeight,mapWidth);

% draw jellyfish
jellyGraphics(:,i) = drawJelly(xJelly(i),yJelly(i),thetaJelly(i),sizeJelly);
endfor

%remove old and plot new health and points status to screen
delete(healthStatus);
delete(crabsCaughtStatus);

healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
               num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', ...
                    num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


%check if the crab is caught, make it disappear and create a new crab

%if (getDist( xNet, yNet, xCrab, yCrab) < 2*sizeCapt);

%crabsCaught = crabsCaught + 1;
%pointsCapt = pointsCapt + pointsCrab;

%erase old crab
% for i=1:length(crabGraphics)
%  delete(crabGraphics(i))
%endfor

% create a new crab
% xCrab = rand*mapWidth;
%yCrab = rand*mapHeight;
%thetaCrab = -pi/2;
%sizeCrab = 50;

%draw new crab
%crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

%endif


%check if the captain got stung by a jellyfish
for i=1:numJelly
if (getDist( xJelly(i), yJelly(i), xCapt, yCapt) < 3*sizeCapt)
  healthCapt= healthCapt - jellySting;
endif
endfor

%check captain's health staus
if (healthCapt < 0)
  break;
endif

% read the keyboard
cmd = kbhit(1);
if (cmd == 'Q')
break;
endif

%cmd = kbhit(); % Read the keyboard.
if( cmd == "w" || cmd == "a" || cmd == "d" ) %Captain has moved. Respond.

% erase old captain

for i=1:length (captainGraphics)
  delete (captainGraphics(i))
%  set( captainGraphics(i), 'Visible', 'off' );
endfor

% move capt
[xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt, mapHeight, mapWidth);

% draw new capt
[captainGraphics, xNet, yNet] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);

%elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd =="o") % respond crab moved

%erase old crab
%for i=1: length (crabGraphics)
%set(crabGraphics(i),'Visible','off');
%endfor

%move crab
%[xCrab,yCrab,thetaCrab] = moveCrab(cmd, xCrab, yCrab, thetaCrab, mapWidth, mapHeight);

%draw new crab
%crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab);

for k=1:numCrabs

  if( !isCrabCaught(k) && getDist(xNet,yNet,xCrab(k),yCrab(k)) < 2*sizeCapt ) %crab is caught

    crabsCaught = crabsCaught + 1;
    isCrabCaught(k) = 1;

    %erase old crab
    for i=1:length(crabGraphics(:,k))
    delete(crabGraphics(i,k));
    endfor
  endif
endfor

endif
fflush(stdout);
pause(.01)
endwhile

endfunction

