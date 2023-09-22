# crabs
Introduction: Crabs is a kids computer game where a captain tries to catch a crab. <br>

Function: drawLine: vector vector color -> line <br>
Purpose: This function draws a line between the two 2D homogeneous coordinate vectors p and q in the given color <br>
and returns a handle to the line. <br>

1)Function: getCapt: number -> matrix <br>
2)Purpose: This function generates a matrix representation of the Captain character at the origin with zero heading. <br>
Its imput number is the size of the Captain to be returned. Each column of the captain matirx is a point of the captain. <br> 
The points are homogenous column vecotrs whose first element is x, second y and third is 1. The coordinate system is x <br>
increasing to the right and y increasing down. <br>
3)Dependencies: (what function does getCapt have to call to work) None. <br>
4)Call: capt + getCapt(50); (this will generate a matrix called capt of size 50) <br>
5)Side effects: (things that it does that aren't returned): None <br>
(printing makes the image but gets rid of it where returning keeps the outputs for further functions) <br>
