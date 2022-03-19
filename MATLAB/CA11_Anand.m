%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-class Activity #11
% PROGRAM PURPOSE: Determine how many students have received each letter
% grade
% AUTHOR: Shreya Anand
% DATE: 3/11/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc

A = 0;
B = 0;
C = 0;
D = 0;
F = 0;
repeat = 1;

while repeat ~= 2
    fileName = input('Enter file name: ', 's');
    [finalGrade, students] = readXLFile(fileName);

    for index = 1:length(finalGrade)
        if finalGrade(index) < 60
            F = F + 1;
        elseif finalGrade(index) >= 60 && finalGrade(index) < 70
            D = D + 1;
        elseif finalGrade(index) >= 70 && finalGrade(index) < 80
            C = C + 1;
        elseif finalGrade(index) >= 80 && finalGrade(index) < 90
            B = B + 1;
        else
            A = A + 1;
        end
    end
    
    fprintf('A: %.0f students\n', A);
    fprintf('B: %.0f students\n', B);
    fprintf('C: %.0f students\n', C);
    fprintf('D: %.0f students\n', D);
    fprintf('F: %.0f students\n', F);

    repeat = input('Enter 1 to repeat the process, 2 to quit: ');
    while repeat ~= 1 && repeat ~=2
        repeat = input('Incorrect Entry. Enter 1 to repeat the process, 2 to quit: ');
    end

end

if repeat == 2
    fprintf('You chose to exit the program\n')
end

