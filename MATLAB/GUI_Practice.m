% Clear workspace and command window
clear, clc

% Create a pop-up to ask for information about the planet

% Create and draw object sun
sun = PlanetaryObject(0, 0, 0.5, 'y');
%planetColorButton(sun)
%draw(sun)
%hold on

% Create and draw object planet
planet = PlanetaryObject(3, 0, 0.2, 'g');
universe = Universe(sun, planet);
startPage(universe)

%{
draw(planet)
set(gca, 'Color', 'k') % Set background to black
axis([-6 5 -7 7])
axis equal 


% Make the planet orbit the sun
orbit(planet, sun);
%}
%hold off




