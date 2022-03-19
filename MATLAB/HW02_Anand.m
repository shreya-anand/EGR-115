%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: Homework 02
% PROGRAM PURPOSE: Calculate average test grades for EGR115 SPR22 class and
% plot the grades
% AUTHOR: Shreya Anand
% DATE: 2/3/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear Workspace and Command window
clear, clc

% Ask user for file name
fileName = input('Enter filename: ', 's');

% Read and store data from inputted file
grades = readmatrix(fileName);

% Ask user for course name
courseName = input('Enter course (i.e. EGR115): ', 's');

% Ask user for semester
semester = input('Enter semester (i.e. SPR22): ', 's');

% Calculate average of all grades for all tests in the class
test1Scores = grades(:, 2);
test1Avg = mean(test1Scores);

test2Scores = grades(:, 3);
test2Avg = mean(test2Scores);

test3Scores = grades(:, 4);
test3Avg = mean(test3Scores);

totalAvg = (test1Avg+test2Avg+test3Avg)/3;

% Print the total average
fprintf('%s %s exam average is %.1f.\n', courseName, semester, totalAvg);

% Plot the data for Test 1, Test 2, and Test 3
studentNumber = grades(:, 1);
plot(studentNumber, test1Scores, studentNumber, test2Scores, studentNumber, test3Scores)
title('EGR115 SPR22 Exam Data')
xlabel('Student Number')
ylabel('Grades')
legend('Exam 1', 'Exam 2', 'Exam 3', 'location', 'southeast')



