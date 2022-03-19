%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: Homework #4
% PROGRAM PURPOSE: Convert temperatures to and from celsius and fahrenheit
% AUTHOR: Shreya Anand
% DATE: 2/22/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc

% Ask user what conversion they want
choice = input('Enter [1] to convert Fahrenheit to Celsius, [2] to convert Celsius to Fahrenheit: ');

% Calculate conversion based off choice
if choice == 1 % F to Celsius
    temp = input('Enter a temperature value (F): ');
    tempC = f2c(temp);
    fprintf('The value you entered, %.1f in F, is equal to %.1f in C.\n', temp, tempC);

elseif choice == 2 % Celsius to F
    temp = input('Enter a temperature value (C): ');
    tempF = c2f(temp);
    fprintf('The value you entered, %.1f in C, is equal to %.1f in F.\n', temp, tempF);

else % Incorrect input
    fprintf('Incorrect choice. Only [1] and [2] are allowed inputs.\n')

end
