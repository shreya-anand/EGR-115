%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: Homework 01
% PROGRAM PURPOSE: To calculate drag for increasing velocity values
% AUTHOR: Shreya Anand
% DATE: 2/1/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear workspace and command window
clear, clc

% Create velocity values (mph)
velocityMPH = 0:10:200;

% Declare variables
drag = 0;
dragCoeff = 2.0019*10^7;
airDensity = 1*10^-6; % kg/m^3
referenceArea = 1; % m^2

% Calculate velocity in SI units
velocitySI = velocityMPH./2.2369362920544;

% Calculate Drag with velocity in SI units
drag = dragCoeff * ((airDensity.*velocitySI.^2*referenceArea)/2);

% Create output array with correct formatting
output = [velocityMPH', drag'];

% Display output
disp(' Velocity (mph)       Drag (N)')
disp(output);


