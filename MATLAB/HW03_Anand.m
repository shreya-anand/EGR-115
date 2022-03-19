%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: Homework 03
% PROGRAM PURPOSE: 
% AUTHOR: Shreya Anand
% DATE: 2/9/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 1
clear, clc

% Ask user for temp in Celsius and conversion
celsius = input('Enter the temp in degrees C: ');
conversion = input('Do you want F or K? ', 's');

% Calculation converison based off user input
if conversion == 'K'
    kelvin = celsius + 273.15;
    roundTemp = round(kelvin, 1);
    fprintf('The temp in K is %.1f\n', roundTemp);

elseif conversion == 'F'
    fahrenheit = (celsius * 1.8) + 32;
    roundTemp = round(fahrenheit, 1);
    fprintf('The temp in degrees F is %.1f\n', roundTemp);

else
    fprintf('Incorrect input. Only F and K are allowed.\n')

end
%% 

% Problem 2
clear, clc

% Ask user for temperature
temperature = input('Enter the current temperature of the machine: ');

% Find state of machine
if temperature > 100
    fprintf('Too hot - equipment malfunctioning.\n')

elseif temperature >= 90 && temperature <= 100
    fprintf('Normal operating temperature\n')

elseif temperature >= 50 && temperature < 90
    fprintf('Temperature below desired operating range\n')
    
else
    fprintf('Too cold - turn off equipment\n')

end
