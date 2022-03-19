%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-class Activity #10
% PROGRAM PURPOSE: Create a guessing game with limited amount of tries
% AUTHOR: Shreya Anand
% DATE: 3/4/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear command window and workspace
clear, clc

% Ask player for name
name = input('Enter your name: ', 's');

% Check if the name is entered
while isempty(name)
    name = input('You must enter a name. Try again: ', 's');
end

% Ask user for interval range

[lowInterval, highInterval, numberToGuess] = randNum();

% Initialize variable
n = 1;

% Start Guessing Game
while n <= 5
    % Ask user for guess
    guess = input(sprintf('Guess a number between %.0f and %.0f: ', lowInterval, highInterval));

    if guess == numberToGuess % User guessed correctly
        fprintf('You guessed my number, %.0f!\n', numberToGuess);
        n = 7;

    elseif guess < numberToGuess && guess > lowInterval % User guessed too low
        if n < 5 % Make sure message is not displayed if user is out of tries
            disp('Number is too low!')
        end
       
    elseif guess > numberToGuess && guess < highInterval % User guessed too high
        if n < 5 % Make sure message is not displayed if user is out of tries
            disp('Number is too high!')
        end

    else % Guess is out of range
        if n < 5 % Make sure message is not displayed if user is out of tries
            disp('Guess is out of range.')
        end

    end

    n = n + 1; % Make sure every input counts as a try (Optional Challenge)

end

% Ending statement for user who ran out of guesses
if n == 6
    fprintf('You ran out of tries. The number was: %.0f\n', numberToGuess);
end

