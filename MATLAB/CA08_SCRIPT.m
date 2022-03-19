%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-class Activity #8
% PROGRAM PURPOSE: Calculate the average grade, maximum grade, minimum
% grade, and final grade for a set of grade data. Also, plot the average 
% grades for each student.
% AUTHORS: Shreya Anand
% DATE: 2/22/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear, clc

% Ask for course, semester, and file name
course   = input('Enter Course Name: ', 's');
semester = input('Enter Semester: ', 's');
filename = input('Enter Filename: ', 's');

% function readXL here
[exams, labs] = readXL(filename);

% Calculate Averages for each student
studentAvg = 0.7 * exams + 0.3 * labs;

% GUI
prompt = sprintf('%s-%s', course, semester);

choice = menu(prompt,... 
'Average Grade','Maximum Grade','Minimum Grade',...
'Final Grades', 'Plot');

% Display results based on button selection
if choice == 1
    % function meanCalc here
    courseAvg = meanCalc(studentAvg);

    % display result
    fprintf('%s %s grade average is %.1f\n', course, semester, courseAvg);

elseif choice == 2
    % function maxCalc here
    maximum = maxCalc(studentAvg);

    % display result
    fprintf('%s %s highest grade is %.1f\n', course, semester, maximum);

elseif choice == 3
    % function minCalc here
    minimum = minCalc(studentAvg);

    % display result
    fprintf('%s %s lowest grade is %.1f\n', course, semester, minimum);

elseif choice == 4
    % function tableDisp here
    table = tableDisp(studentAvg);

    % Ask for headings
    heading1 = input('Enter Heading 1: ', 's');
    heading2 = input('Enter Heading 2: ', 's');
    fprintf('   %s  %s\n', heading1, heading2);
    disp(table)
    
elseif choice == 5
    % function plotXY here
    plotXY(studentAvg, course, semester)

end