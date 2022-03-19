% Exam_01 (v1 or v2): v1

% Program Purpose: To calculate the BMI of a set of patient data, display 
% the BMI of a random patient, and plot the BMIs in a graph

% Created by: Shreya Anand

% Date: 2/10/2022

% I affirm that the creation of this program is my own work

clear, clc

% Ask user for name of file and name of Physician
fileName = input('Enter the name of the file: ', 's');
physician = input('Enter name of physician: ', 's');

% Get data from named file
patientData = readmatrix(fileName);

% Get weight and height
weight = patientData(:, 2);
height = patientData(:, 3);

% Generate random patient
randomPatient = randi([1, 25], 1, 1);

% Calculate bmi
bmi = 703 * weight./height.^2;

% Get bmi of randomPatient
patientBMI = bmi(randomPatient, 1);

% Indicate obesity of random patient
if patientBMI < 18.5 % Underweight
    fprintf('Patient #%.0f has a BMI of %.1f, indicates underweight\n', randomPatient, patientBMI)

elseif patientBMI >= 18.5 && patientBMI <= 24.9 % Ideal weight
    fprintf('Patient #%.0f has a BMI of %.1f, indicates ideal weight\n', randomPatient, patientBMI)

elseif patientBMI >= 25 && patientBMI <= 29.9 % Overweight
    fprintf('Patient #%.0f has a BMI of %.1f, indicates overweight\n', randomPatient, patientBMI)

else % Obese
    fprintf('Patient #%.0f has a BMI of %.1f, indicates obesity\n', randomPatient, patientBMI)

end

% Plot BMI values

patientNumber = patientData(:, 1);
plot(patientNumber, bmi)
xlabel('Patient Number')
ylabel('BMI')
title(sprintf('Dr. %s Patient Data', physician))


