
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-Class Activity #6
% PROGRAM PURPOSE: Calculate the area of 4 different types of shapes
% AUTHOR: Shreya Anand
% DATE: 2/8/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear

% User selection of shape
Shape = input(sprintf('Enter shape of area:\n 1 = circle\n 2 = square\n 3 = rectangle\n 4 = triangle\n 5 = other\n> ' ));

% User input of the units that will be used for the area
if Shape >=1 && Shape <=4
    Units = input('What are the units you will use to calculate the area of your shape? ', 's'); % This input will take in text.
end

% Input and calculation for area of circle
if Shape == 1
    Diameter = input('What is the diameter of your circle? ');
    Area     = pi * (Diameter/2)^2; 

% Input and calculation for area of square
elseif Shape == 2  
    Side = input('What is the length of one of the sides of your square? ');
    Area = Side^2;
    
% Inputs and calculation for area of rectangle
elseif Shape == 3
    Length = input('What is the length of your rectangle? ');
    Width  = input('What is the width of your rectangle? ');
    Area   = Length * Width;
 
% Inputs and calculation for area of triangle
elseif Shape == 4
    Base   = input('What is the base of your triangle? ');
    Height = input('What is the height of your triangle? ');
    Area   = (1/2) * Base * Height;

% Output that the shape was not valid
elseif Shape == 5
    fprintf('I am sorry this program cannot calculate the area of your shape.\nShutting program down now.\n')

% Output that the input was invalid
else
    fprintf('Invalid input. Please only enter a number between 1-5.\nShutting program down now.\n')
end

% Output the area of the shape that was calculated for circle, square,
% rectange, or triangle (%s will display the text that the user put for the
% units input: Units = input('What are the units you you will use to calculate the area of your shape? ', 's') 
if Shape >=1 && Shape <=4
    fprintf('The area of your shape is %.2f %s squared\n', Area, Units)
end
