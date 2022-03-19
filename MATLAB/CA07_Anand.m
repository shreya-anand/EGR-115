%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-Class Activity #7
% PROGRAM PURPOSE: Calculating data set average and plot data set values
% AUTHOR: Shreya Anand
% DATE: 2/15/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear workspace and command window

clear, clc

% Call function and return temperatures and hours

[temps, hours] = readXLFile('temps24hrs.xlsx');
 
% Calculate temperature mean

tempsAve = mean(temps);

% Display result (average daily temperatures)

fprintf('The average daily temperature in F is %.2f \n', tempsAve) 

% Display daily temperature chart - plot(x,y)

plot(hours, temps)
title('Daily Temperature Data')
xlabel('Time (hrs)')
ylabel('Temperature (F)')
