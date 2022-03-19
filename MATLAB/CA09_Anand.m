%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ASSIGNMENT TYPE AND NUMBER: In-class Activity #9
% PROGRAM PURPOSE: Simulate a guessing game and see if the user guesses the
% number
% AUTHOR: Shreya Anand
% DATE: 2/22/2022
% CREDIT TO(if applicable):

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear workspace and command window
clear, clc

% Ask user for interval and generate random number
fprintf('\n** Guessing Game **\n')
disp('** Player 01 **')
[lowInterval, highInterval, numberToGuess] = randNum();

% Ask second player for name
fprintf('\n** Player 02 **\n\n')
name = input('Enter your name: ', 's');

% Check if the name is entered
while isempty(name)
    name = input('You must enter a name. Try again: ', 's');
end

% Ask for guess
guess = input(sprintf('Guess my number between %.0f and %.0f: ', lowInterval, highInterval));

% Check if guess is within range
while guess < lowInterval || guess > highInterval
    fprintf('Your guess was out of range! Only numbers from %.0f to %.0f are allowed. ', lowInterval, highInterval);
    guess = input('Try Again: ');
end

% Display output based off guess
if guess == numberToGuess % Guess is equal
    fprintf('%s, You guessed the number!\n', name)

elseif guess > numberToGuess % Guess is too high
    fprintf('%s, Your guess was too high! My number was %.0f.\n', name, numberToGuess)

else % Guess is too low
    fprintf('%s, Your guess was too low! My number was %.0f.\n', name, numberToGuess)

end
