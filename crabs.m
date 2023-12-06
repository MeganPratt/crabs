function crabs

% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab .
% Draw the game map and initialize map dimensions .
% start screen

playAgain = 1;
  level = drawStartScreen("Crabs-title.png");
  [numJelly, numCrabs] = setEnemies (level);
while (playAgain == 1)
  [mapHeight , mapWidth] = drawMap( "BGImage.png" );
if (level == 'Q')
  break
else if(level <=5)

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 900;
thetaCapt = pi/6;
sizeCapt = 50;

[captGraphics, netNodeX, netNodeY, captNodeX, captNodeY, headNodeX, headNodeY] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

%initialize Jellyfish
numJelly = level
xJelly = rand(1, numJelly) * mapWidth;
yJelly = rand(1, numJelly) * mapHeight;
thetaJelly = ones(1, numJelly) * (-pi/2);
sizeJelly = 50;
jellyDamage = 10;
for(k=1: numJelly)
  [jellyGraphics(:,k), xJellyNode(k), yJellyNode(k)] = drawJelly(xJelly(k), yJelly(k), thetaJelly(k), sizeJelly);
endfor


% initialize Bubble
sizeBubble = 30;
xBubble = rand*mapWidth;
yBubble = mapHeight - 50*sizeBubble;
[bubbleGraphics, xBubbleCenter, yBubbleCenter] = drawBubble(xBubble,yBubble,sizeBubble);
timeDuration = 150 - (30 * (level - 1));


% initialize Heart
sizeHeart = 60;
thetaHeart = -pi/2;
heartCounter = 1;
heartOnScreen = false;


% initialize Crabs
numCrabs = level;
crabStep = 30;
xCrab = rand(1, numCrabs) * mapWidth;
yCrab = 3*mapHeight/4 + rand(1, numCrabs)*mapHeight/4;
thetaCrab = ones(1, numCrabs) * (-pi/2);
isCrabCaught = zeros(1, numCrabs);
sizeCrab = 50;
for (j=1: numCrabs)
    crabColor(j) =1;
    [crabGraphics(:,j), xCrabNode(j), yCrabNode(j), r(j), g(j), b(j)] = drawCrab(xCrab(j), yCrab(j), thetaCrab(j), sizeCrab, crabColor(j), 0, 0, 0);
    crabColor(j) = 0;
endfor
ptCounter = 0;
health = 100;


%text
pointText = text(mapWidth/2, -20, strcat('Points: ', num2str(ptCounter)), 'FontSize', 30, 'Color', 'red');
healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 30, 'Color', 'red');










elseif(level >=6)

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 900;
thetaCapt = pi/6;
sizeCapt = 50;
timeDuration = 300 - (30 * (level - 1));

[captGraphics, netNodeX, netNodeY, captNodeX, captNodeY, headNodeX, headNodeY] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

% initialize Shark
##xShark = 3/4 * mapWidth;
##yShark = 1/2 * mapHeight;
xShark = 50;
yShark = 50;
sharkMove = -60*(0.5*(level-5));
thetaShark = 0;
sizeShark = 150;
sharkDamage = 25 * (level - 5);
  [sharkGraphics, xSharkNode, ySharkNode] = drawShark(xShark, yShark, thetaShark, sizeShark);

  % initialize Bubble
sizeBubble = 30;
xBubble = rand*mapWidth;
yBubble = mapHeight - 50*sizeBubble;
[bubbleGraphics, xBubbleCenter, yBubbleCenter] = drawBubble(xBubble,yBubble,sizeBubble);

% initialize Heart
sizeHeart = 60;
thetaHeart = -pi/2;
heartCounter = 1;
heartOnScreen = false;

% initialize Crabs
crabStep = 30;
numCrabs = level;
xCrab = rand(1, numCrabs) * mapWidth;
yCrab = 3*mapHeight/4 + rand(1, numCrabs)*mapHeight/4;
thetaCrab = ones(1, numCrabs) * (-pi/2);
isCrabCaught = zeros(1, numCrabs);
sizeCrab = 50;
for (j=1: numCrabs)
    crabColor(j) =1;
    [crabGraphics(:,j), xCrabNode(j), yCrabNode(j), r(j), g(j), b(j)] = drawCrab(xCrab(j), yCrab(j), thetaCrab(j), sizeCrab, crabColor(j), 0, 0, 0);
    crabColor(j) = 0;
endfor
ptCounter = 0;
health = 100;

% text
pointText = text(mapWidth/2, -20, strcat('Points: ', num2str(ptCounter)), 'FontSize', 30, 'Color', 'red');
healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 30, 'Color', 'red');













endif
while (1) % While not quit, read keyboard and respond
  commandwindow();
  cmd = kbhit(1); % Read the keyboard .
  set (pointText, 'Visible', 'on');
  set (healthText, 'Visible', 'on');

  if(level <= 5)
  for(k=1: numJelly)
% erase old jellyfish
for i=1:length(jellyGraphics)
  delete(jellyGraphics(i, k));
endfor

% move jellyfish
[xJelly(k),yJelly(k),thetaJelly(k)] = moveJelly(level, xJelly(k), yJelly(k),thetaJelly(k), sizeJelly,...
mapHeight,mapWidth);


% draw jellyfish
[jellyGraphics(:,k), xJellyNode(k), yJellyNode(k)] = drawJelly(xJelly(k),yJelly(k),thetaJelly(k),sizeJelly);
endfor
endif

  % draw heart
if (heartOnScreen == false)
heartRand = ceil((rand*20)*level);
endif

if (heartRand == (20*level)/2 && heartOnScreen == false)
xHeart = rand*mapWidth;
yHeart = rand*mapHeight;
[fill2, xHeartCenter, yHeartCenter] = drawHeart(xHeart, yHeart, sizeHeart, thetaHeart);
heartOnScreen = true;
endif

if (heartOnScreen == true)
headDistFromHeart = sqrt ((xHeartCenter - headNodeX)^2 + (yHeartCenter - headNodeY)^2);
if(headDistFromHeart < (0.5*sizeCapt+2*sizeHeart))

  set (fill2, 'Visible', 'off');

  if(health <= 80)
  health=health+20;
  else
    health=100;
  endif

  delete(healthText);
  healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 30, 'Color', 'red');

  heartOnScreen = false;
endif
endif


  if (cmd == "w" || cmd == "a" || cmd == "d" || cmd == "s") % Captain has moved . Respond .

   % erase old captain
  for(i=1:length(captGraphics))
    delete(captGraphics(i));
  endfor

    % move capt
  [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt, mapWidth, mapHeight);

% draw new capt
  [captGraphics, netNodeX, netNodeY, captNodeX, captNodeY, headNodeX, headNodeY] = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);
endif

  % removes crab and gives that crab a new location
  for (k=1: numCrabs)
    if (isCrabCaught(k) == 0 && getDist(netNodeX, netNodeY, xCrab(k), yCrab(k)) < 5 * sizeCapt)
      % erase old crab
      for(j=1:length(crabGraphics(:,k)))
        delete(crabGraphics(j,k));
      endfor

      % move crab
    [thetaCrab(k)] = getAngle(netNodeX, netNodeY, xCrab(k), yCrab(k));
    [xCrab(k), yCrab(k)] = moveCrab(netNodeX, netNodeY, xCrab(k), yCrab(k), crabStep, mapWidth, mapHeight, sizeCrab, thetaCrab(k));

      % draw new crab
      [crabGraphics(:,k), xCrabNode(k), yCrabNode(k)] = drawCrab (xCrab(k), yCrab(k), thetaCrab(k), sizeCrab, crabColor, r(k), g(k), b(k));
    endif

  dist = getDist(netNodeX, netNodeY, xCrabNode(k), yCrabNode(k));
 if (isCrabCaught(k) == 0 && dist < 1.5*sizeCapt + 1.5*sizeCrab)
   isCrabCaught(k) = 1;
   ptCounter = sum(isCrabCaught);
     for(i=1:length(crabGraphics(:,k)))
        delete(crabGraphics(i,k));
     endfor
     delete(pointText);
     pointText = text(mapWidth/2, -20, strcat('Points: ', num2str(ptCounter)), 'FontSize', 30, 'Color', 'red');
  endif
endfor

 for i=1: length(bubbleGraphics)
   set(bubbleGraphics(i),'Visible','off');
 endfor
 % move bubble
 [xBubble,yBubble] = moveBubble (level,xBubble,yBubble,sizeBubble,mapHeight,mapWidth);

 % draw bubble
 [bubbleGraphics, xBubbleCenter, yBubbleCenter] = drawBubble (xBubble,yBubble,sizeBubble);


headDistFromBubble = sqrt((xBubbleCenter - headNodeX)^2 + (yBubbleCenter - headNodeY)^2);
if (headDistFromBubble < 0.5*sizeCapt + 3*sizeBubble)
  timeDuration = 150 - (30 * (level - 1));
endif

if (timeDuration > 0)
  timeDuration = timeDuration - 1;
  breathText = text(mapWidth/2, mapHeight+20, strcat('breath: ', num2str(timeDuration)), 'FontSize', 30, 'Color', 'blue');
else
  break;
endif
if(level <=5)
for (k=1: numJelly)
 jellyDistFromCapt = sqrt((xJellyNode(k) - captNodeX)^2 + (yJellyNode(k) - captNodeY)^2);
  if (jellyDistFromCapt < 1*sizeJelly + sizeCapt)
      health = health - jellyDamage;
      delete(healthText);
      healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 30, 'Color', 'red');
      if (health <= 0)
          break
      endif
  endif
endfor
endif
% Captain Health Bar
if(level >= 6)
 sharkDistFromCapt = sqrt((xSharkNode - captNodeX)^2 + (ySharkNode - captNodeY)^2);
  if (sharkDistFromCapt < sizeShark + sizeCapt/8)
      health = health - sharkDamage;
      delete(healthText);
      healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 30, 'Color', 'red');
      if (health <= 0)
          break
      endif
  endif
  endif
  if (health <= 0)
    break
  endif

   % erase old Shark
if(level >=6)
for(s=1:length(sharkGraphics))
  set(sharkGraphics(s), 'Visible','off');
endfor


% move shark
[xShark, yShark, thetaShark] = sharkTracking(xCapt, yCapt, xShark, yShark, sharkMove, sharkDistFromCapt, thetaCapt, mapWidth, mapHeight);

% draw shark
[sharkGraphics, xSharkNode, ySharkNode] = drawShark(xShark,yShark,thetaShark,sizeShark);
endif

  if(cmd == 'Q')
  break;
  endif

  fflush(stdout);
pause(.01)

if (isCrabCaught == 1)
  break
endif

if (health <= 0)
  break
endif

delete(breathText);

endwhile

% end screen
if(isCrabCaught == 1)
level = drawEndScreen("You-won.png", ptCounter);

else
level = drawEndScreen("You-lost.png");
endif

endif

endwhile
close all

endfunction
