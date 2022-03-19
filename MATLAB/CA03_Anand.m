%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-Class Activity #3
% PROGRAM PURPOSE: Calculate the estimated rabbit population according to 
% an initial population (minimum of 2 rabbits) and a specified number of 
% years. Also, display the results in a table and create a plot of the 
% previous data.
% AUTHOR: Shreya Anand
% DATE: 1/25/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear workspace and command window

clear, clc

% Take input of population from keyboard

initialPopulation = input('Enter the initial rabbit population (min 2): ');
years = input('Enter the amount of years (whole numbers): ');

% Set population to the growth equation

format bank
finalPopulation = initialPopulation*(3.5^years);

% Create array of years in 0.25 year increments and the corresponding
% amount of rabbits

time = 0:0.25:years;
rabbits = initialPopulation*(3.5.^time);

% Put the time and number of rabbits into one matrix

populationTable = [time', rabbits'];

% Display the populationTable

disp('          YEARS       Nr of RABBITS')
disp(populationTable)

% Display finalPopulation

fprintf('The rabbit population is estimated to be approx. %d in %d years.\n', round(finalPopulation), years)

% Plot the population

plot(time, rabbits)
title('Rabbit Population Increase')
xlabel('time (years)')
ylabel('Nr. of Rabbits')






