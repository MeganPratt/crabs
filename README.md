# crabs
Introduction: Crabs is a kid's computer game where a captain tries to catch a very clever and powerful crab. <br>

Function: drawLine: vector vector color -> line <br>
Purpose: This function draws a line between the two 2D homogeneous coordinate vectors p and q in the given color. It inputs p and q <br>
coordinates as well as a color and returns a handle to the line. <br>
Dependencies: None <br>
Call: handle = drawLine (p, q, color) <br>
Side effects: draws the line <br>

Function: getCapt: number -> matrix <br>
Purpose: This function generates a matrix representation of the Captain character at the origin with a zero heading. <br>
Its input number is the size of the Captain to be returned. Each column of the captain matrix is a point of the captain. <br> 
The points are homogenous column vectors whose first element is x, second y, and third is 1. The coordinate system is x <br>
increasing to the right and y increasing down. <br>
Dependencies: None. <br>
Call: capt = getCapt(50) <br>
Side effects: None <br>

Function: crabs <br>
Purpose: This function draws the game map and initializes map dimensions, captain location, heading, size, and graphics handles. <br>
While there are no inputs or outputs to this function, it does use the image file "BGImage.png," the height <br>
and width of the image, and creates the scene for the game.  <br>
Dependencies: drawMap( "BGImage.png" ) and drawCapt  <br>
Call: crabs ()  <br>
Side effects: None<br>

Function: drawCapt  <br>
Purpose: This function draws the captain at the given position (xCapt, yCapt), with the heading thetaCapt and size of sizeCapt.  <br>
This function inputs xCapt, yCapt, thetaCapt, and sizeCapt and returns a vector of graphics handles called captainGrapics.  <br>
The matrix getCapt is called using the sizeCapt, the matrix getRotation is then called using the thetaCapt, the getRotation <br>
matrix is multiplied by the getCapt matrix to get the rotated captain matrix, the getTranslation matrix is called, and then <br>
the rotated captain matrix is multiplied by the getTranslation matrix to get the position of the captain rotated and translated. <br>
Dependencies: getCapt, getTranslation, getRotation <br>
Call: captainGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt) <br>
Side effects: draws the captain at the given position (xCapt, yCapt) <br>

Function: drawMap <br>
Purpose: This function draws the background map for the game using the image named imageName. The inputs are the image height <br>
and width, and the imageName. The outputs are the image background with the given height and width.<br>
Dependencies: None <br>
Call: (height,width) = drawMap(imageName) <br>
Side effects: draws the background image called imageName at the height and width given <br>

Function: getTranslation <br>
Purpose: This function inputs xCapt and yCapt and returns the translated matrix T. Its main purpose is to make a matrix to be <br>
multiplied in drawCapt to translate the captain.  <br>
Dependencies: None  <br>
Call: T = getTranslation (xCapt,yCapt) <br>
Side effects: None <be>

Function: getRotation <br>
Purpose: This function inputs thetaCapt and returns the rotated matrix R. Its main purpose is to make a matrix to be multiplied <br>
in drawCapt to rotate to captain. <br>
Dependencies: None  <br>
Call: R = getRotaion (thetaCapt) <br>
Side effects: None <br>

Function: moveCapt <br>
Purpose: This function inputs cmd, x, y, and theta and returns xCapt, yCapt, and thetaCapt. Its main purpose is to shift the <br>
captain's current points to the user's desired location through keyboard-hit commands. Based on what the user enters determines <br>
the kind of shift required to move the captain. This function associates keyboard-hit commands with how they should move the <br>
captain by changing the xCapt, yCapt, and thetaCapt. <br>
Dependencies: None <br>
Call: (xCapt, yCapt, thetaCapt) = moveCapt(cmd, x, y, theta, width, height) <br>
Side effects: None <br>
