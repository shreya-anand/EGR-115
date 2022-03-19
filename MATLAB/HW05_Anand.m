%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: Homework #5
% PROGRAM PURPOSE: Ask the user what temperature they want converted,
% convert the temperature, and continue until user says to stop
% AUTHOR: Shreya Anand
% DATE: 3/2/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear command window and workspace
clear, clc

% Initialize variable
choice = 0;

while choice ~= 3
    % Ask user what conversion they want
    choice = input('Enter [1] to convert Fahrenheit to Celsius, [2] to convert Celsius to Fahrenheit, or [3] to quit: ');

    if choice == 1 % F to C
        tempChoice = input('Enter a temperature value in F: ');
        tempC = f2c(tempChoice);
        fprintf('The value you entered, %.1f in F, is equal to %.1f in C\n', tempChoice, tempC);
        fprintf('Want to try again?\n')

    elseif choice == 2 % C to F
        tempChoice = input('Enter a temperature value in C: ');
        tempF = c2f(tempChoice);
        fprintf('The value you entered, %.1f in C, is equal to %.1f in F\n', tempChoice, tempF);
        fprintf('Want to try again?\n')

    elseif choice == 3 % Display message to user when quitting
        fprintf('Program will now quit\n');

    else % Tell user to try again 
        disp('Incorrect choice, try again.')

    end

end
