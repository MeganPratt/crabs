function capt = getCapt (captSize)

% The function getCapt computes and returns the captain centered at the origin with the head of the captain is on the positive x-axis indication a heading angle of zero. The captain is returned in the form of a matrix with each column representing one point on the captain. The parameter captSize is used as a scale for drawing the captain and sets the size of the captain.

% In the sketch below, the captain is drawn facing you with his right hand holding the spear.
% The sketch shows him with his points numbered. The point number 1 is located at the x-y coordinates (captSize, captSize).

%{

                                          Right Hand      Spear Tip
                                        14 ____12____________13
                                                \
                                                  18
                                                    \
                               4________5_____________6
                                        |             |
                                        |             7 ------8
                                        |   ( 0,0 )   |       |  __________________\  positive x-axis
                                        |             10------9                                          /
                                        |             |
                               3 _______2_____________1
                                               |    /
                                               |  17
                                               |/
                                        16____11_____________15
                                           Left Hand      Spear Tip
                                               |
                                               |
                                              \|/
                                positive y-axis
%}

%Capt left side
captPt1 = [ captSize; captSize; 1]; %left shoulder
captPt2 = [ -captSize; captSize; 1]; %left waist

%Capt feet
captPt3 = [-3*captSize; captSize; 1]; %left
captPt4 = [-3*captSize; -captSize; 1]; %right

%Capt right side
captPt5 = [ -captSize; -captSize; 1]; %right waist
captPt6 = [ captSize; -captSize; 1]; %right shoulder


%head
captPt7 = [ captSize; -captSize/2; 1];     %right neck
captPt8 = [ 2*captSize; -captSize/2; 1]; %right top of head
captPt9 = [ 2*captSize; captSize/2; 1];  %left top of head
captPt10 = [ captSize; captSize/2; 1];   %left neck
captPt23 = [ captSize/2; 0; 1];    %beard bottom
captPt24 = [ 3*captSize/2; -captSize/2; 1];   %beard top left
captPt25 = [ 2*captSize; -captSize; 1];   %hat left
captPt26 = [ 11*captSize/4; 0; 1];   %hat top
captPt27 = [ 2*captSize; captSize; 1];  %hat right
captPt28 = [ 3*captSize/2; captSize/2; 1];   %beard top right

%hands
captPt11 = [   0;   2*captSize; 1];  %left
captPt12 = [   0;  -2*captSize; 1]; %right

%net
captPt13 = [ 0; -3*captSize; 1];
captPt14 = [ -3*captSize/2; -2*captSize; 1];
captPt18 = [ -captSize; -4*captSize; 1];
captPt19 = [ -5*captSize/2; -3*captSize; 1];
captPt20 = [ -5*captSize/2; -4*captSize; 1];
captPt21 = [ -2*captSize; -5*captSize/2; 1];
captPt22 = [ -captSize/2; -7*captSize/2; 1];

%elbows
captPt29 = [ -captSize/2; 3*captSize/2; 1];
captPt17=[ captSize/2; -3*captSize/2; 1];

#sword
captPt16 = [ captSize/2; 3*captSize/2; 1];
captPt15 = [ 3*captSize; 2*captSize; 1];
captPt30 = [ captSize/2; 5*captSize/2; 1];
captPt31 = [ -captSize/2; 2*captSize; 1];

%captain matrix
capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14, captPt15, captPt16, captPt17, captPt18, captPt19, captPt20, captPt21, captPt22, captPt23, captPt24, captPt25, captPt26, captPt27, captPt28, captPt29, captPt30, captPt31];

endfunction

