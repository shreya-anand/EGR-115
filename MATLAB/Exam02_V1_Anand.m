% Exam_02 (v1 or v2) v1

% Program Purpose: Calculate and print out the amount of bonus an employee
% receives based off of their sales

% Created by: Shreya Anand

% Date: 3/10/2022

% I affirm that the creation of this program is my own work

% Clear workspace and command window
clear, clc

% Initialize repeat variable
repeat = 'y';

while strcmp(repeat, 'y')
    % Ask for employee name
    name = input('Employee name: ', 's');
    
    % Check if name is entered
    while isempty(name)
        name = input('Name cannot be empty. Try again: ', 's');
    end
    
    % Ask for total sales
    sales = input('Enter your total sales: ');
    
    % Make sure inputted sales is allowed
    while isempty(sales) || sales < 0 
        sales = input('Incorrect. Enter your total sales: ');
    end
    
    % Get the bonus
    bonusMoney = bonus(sales);

    if bonusMoney == 0 % Display different message if bonus is 0
        fprintf('%s, you will not receive a bonus at this time\n', name);
    else
        fprintf('%s, the total bonus you will receive is $%.2f\n', name, bonusMoney);
    end
    % Ask if user would like to repeat
    repeat = input('Try again? [y/n]: ', 's');

    % Check if repeat input is allowed
    while strcmp(repeat, 'y') == false && strcmp(repeat, 'n') == false
        repeat = input('Incorrect. Enter only [y/n]: ', 's');
    end
   
end


