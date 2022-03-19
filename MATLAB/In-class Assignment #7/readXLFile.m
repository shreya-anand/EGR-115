function [temps, hours] = readXLFile(fileName)
    % Purpose: Read inputted file and create two separate arrays for
    % temperature and hours. Returns temps and hours
    tempData = readmatrix(fileName);

    temps = tempData(:, 2);

    hours = tempData(:, 1);

end