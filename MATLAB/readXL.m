function [exams, labs] = readXL(fileName)
    % Read file and get exam and lab grades
    gradeData = readmatrix(fileName);
    exams = gradeData(:, 2);
    labs = gradeData(:, 3);

end