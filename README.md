# crabs
Introduction: Crabs is a kids computer game where a captain tries to catch a very clever and powerful crab. <br>

Function: drawLine: vector vector color -> line <br>
Purpose: This function draws a line between the two 2D homogeneous coordinate vectors p and q in the given color. It inputs x and y <br>
coordinates as well as a color and returns a handle to the line. <br>
Dependencies: None <br>
Call: handle = drawLine (p, q, color) <br>
Side effects: graphs the line <br>

Function: getCapt: number -> matrix <br>
Purpose: This function generates a matrix representation of the Captain character at the origin with a zero heading. <br>
Its input number is the size of the Captain to be returned. Each column of the captain matrix is a point of the captain. <br> 
The points are homogenous column vectors whose first element is x, second y, and third is 1. The coordinate system is x <br>
increasing to the right and y increasing down. <br>
Dependencies: None. <br>
Call: capt = getCapt(50) <br>
Side effects: None <br>

Function: crabs <br>
Purpose: This function draws the game map and the captain. This function also initializes map dimensions, captain location, heading,  <br>
size, and graphics handles. It inputs the name of the image file "BGImage.png" and returns the height and width of the image and plots  <br>
the background image.  <br>
Dependencies: drawMap( "BGImage.png" ) and drawCapt  <br>
Call: crabs ()  <br>
Side effects: graphs the game map <br>

Function: drawCapt  <br>
Purpose: This function draws the captain at the given position (xCapt, yCapt), with heading thetaCapt.  <br>
This function inputs xCapt, yCapt, thetaCapt, and sizeCapt and returns a vector of graphics handles called captainGrapics.  <br>
Dependencies: getCapt, getTranslation <br>
Call: captainGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt) <br>
Side effects: draws the captain at the given position (xCapt, yCapt) <br>

Function: getTranslation <br>
Purpose: This function inputs xCapt and yCapt and returns the translated matrix T.  <br>
The captain's location is now represented by the translated matrix T multiplied by the rotated captain matrix.  <br>
Dependencies: None  <br>
Call: T = getTranslation (x,y) <br>
Side effects: None <be>
