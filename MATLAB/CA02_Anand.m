%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-Class Activity #2
% PROGRAM PURPOSE: To calculate average annual low and high temperatures
% for the city of daytona
% Also, plot the monthly average low and high temperatures in a graph
% AUTHOR: Shreya Anand
% DATE: 1/20/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear workspace and command window

clear, clc

% Extract data from Excel file

tempData = readmatrix('DBMonthlyTemps.xlsx');

% Split "tempData" into lows and highs

high = tempData(:, 2);
low = tempData(:, 3);

% Calculate average of the high temperatures

highAve = mean(high);

% Calculate average of the low temperatures

lowAve = mean(low);

% Print output of average low and high temperatures

fprintf('Daytona Beach average annual low temperature is %.1f F. \n', lowAve)
fprintf('Daytona Beach average annual high temperature is %.1f F. \n', highAve)

% Display plot of monthly average low and high temperatures

months = 1:12;

plot(months, low, 'b*-', months, high, 'g*-')
title('Daytona Beach Monthly Average Temperatures')
xlabel('Month')
ylabel('Average Temperature (F)')
legend('High', 'Low', 'Location', 'northwest')
