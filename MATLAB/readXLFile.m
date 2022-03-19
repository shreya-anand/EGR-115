function [finalGrade, students] = readXLFile(fileName)

    grades = readmatrix(fileName);

    finalGrade = grades(:, 2);

    students = grades(:, 1);
    
end