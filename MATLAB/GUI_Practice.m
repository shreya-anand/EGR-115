% Clear workspace and command window
clear, clc

% Create a pop-up to ask for information about the planet

% Create and draw object sun
sun = PlanetaryObject(0, 0, 0.5, 'y');


% Create and draw object planet
planet = PlanetaryObject(3, 0, 0.2, 'g');
universe = Universe(sun, planet);
startPage(universe)






