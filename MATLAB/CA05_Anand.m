%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-class Activity #5
% PROGRAM PURPOSE: Simulate a guessing game and see if the user guesses the
% number
% AUTHOR: Shreya Anand
% DATE: 2/1/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear workspace and command window
clear, clc

% Generate random number between 1 and 10
numberToGuess = randi([1, 10], 1, 1);

% Ask user for their name and a number between 1 and 10
fprintf('Welcome to the Guess My Number Game!\n\n')
name = input('Enter your name: ', 's');
guess = input('Guess my number (1-10): ');

% Display output based off guess
if guess >= 1 && guess <= 10 % Guess is within range
    
    if guess == numberToGuess % Guess is equal
        fprintf('%s, You guessed the number!\n', name)

    elseif guess > numberToGuess % Guess is too high
        fprintf('%s, Your guess was too high! My number was %.0f.\n', name, numberToGuess)

    else % Guess is too low
        fprintf('%s, Your guess was too low! My number was %.0f.\n', name, numberToGuess)

    end

else
    fprintf('%s, Your guess was out of range!\n', name)
    fprintf('Only numbers 1-10 are allowed\n')

end

