function [lowInterval, highInterval, numberToGuess] = randNum()
    % Purpose: generate random number with user defined interval
    lowInterval = input('Provide the lower interval edge: ');
    highInterval = input('Provide the higher interval edge: ');
    numberToGuess = randi([lowInterval, highInterval], 1, 1);

end