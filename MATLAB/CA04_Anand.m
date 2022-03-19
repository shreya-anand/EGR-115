%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-Class Activity #4
% PROGRAM PURPOSE: To find the maximum and minimum value of 3 randomly
% generated data sets
% AUTHOR: Shreya Anand
% DATE: 1/27/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
 Simulate information collected from a set of sensors (3) taken during a
 specified period of time (seconds).
 Each row contains a set of sensor readings, with the first row containing
 values collected at 0 seconds, the second row containing values collected at
 1.0 seconds, and so on.
 User chooses sensor value range and dataset size. 
 
 Find both the maximum value and the minimum value recorded on
 each sensor and determine at what times they occurred.
 
 Display results.

 %}
% Clear workspace and command window

clear, clc
 
% STEP 1: DATA INPUT
% Need: sensor1, sensor2, sensor3, and time in seconds

% GENERATE SENSOR DATA
%*****************************************************
% Request sensor data range from user

fprintf('*** SENSOR DATA SIMULATOR***\n')
fprintf('****************************\n')
scientist = input('Scientist name: ', 's');

low = input('Enter the lowest desired sensor value: ');
high = input('Enter the highest desired sensor calue: ');

% Request size of dataset from user (how many elements to generate)

dataSize = input('Enter size of data set: ');

% Generate sensor datasets as per user input 

sensor1 = rand(1,dataSize) * (high - low) + low;
sensor2 = rand(1,dataSize) * (high - low) + low;
sensor3 = rand(1,dataSize) * (high - low) + low;

% Generate time vector (seconds)



% ******************************************************
% FIND MINIMUM AND MAXIMUM VALUES FOR EACH SENSOR
% Find the minimum reading in all 3 sensors, and corresponding time of
% occurrence

[minimum1, minIndex1] = min(sensor1);
[minimum2, minIndex2] = min(sensor2);
[minimum3, minIndex3] = min(sensor3);

% Find the maximum reading in all 3 sensors, and corresponding time of
% occurrence

[maximum1, maxIndex1] = max(sensor1);
[maximum2, maxIndex2] = max(sensor2);
[maximum3, maxIndex3] = max(sensor3);

% ******************************************************
% DISPLAY RESULTS
% Results for sensor 1

fprintf('\n***SENSOR 01***\n')
fprintf('The maximum value for sensor 01 is %f and occurs at %.1f seconds. \n', maximum1, maxIndex1)
fprintf('The minimum value for sensor 01 is %f and occurs at %.1f seconds. \n', minimum1, minIndex1)

 % Results for sensor 2

fprintf('\n***SENSOR 02***\n')

fprintf('The maximum value for sensor 02 is %f and occurs at %.1f seconds. \n', maximum2, maxIndex2)
fprintf('The minimum value for sensor 02 is %f and occurs at %.1f seconds. \n', minimum2, minIndex2)

% Results for sensor 3

fprintf('\n***SENSOR 03***\n')

fprintf('The maximum value for sensor 03 is %f and occurs at %.1f seconds. \n', maximum3, maxIndex3)
fprintf('The minimum value for sensor 03 is %f and occurs at %.1f seconds. \n', minimum3, minIndex3)

% *********************************************************
% PORGRAM EXIT MESSAGE

fprintf('\n****************************\n')
fprintf('Program will now exit. \n')
fprintf('User %s is LOGGED OUT. \n', scientist)
fprintf('****************************\n')
% *********************************************************