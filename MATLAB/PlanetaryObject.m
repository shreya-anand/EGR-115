classdef PlanetaryObject < handle
    % Declare properties for all planetary objects
    properties
        xCoordinate
        yCoordinate
        radius
        color
        deltaTheta
        plottedObject
    end

    methods
        function obj = PlanetaryObject(x, y, r, c)
            % Purpose: 
            obj.xCoordinate = x;
            obj.yCoordinate = y;
            obj.radius = r;
            obj.color = c;
            obj.deltaTheta = 0;
        end

        function changeColor(planet, color)
            % Purpose: change the color of the planet
            planet.color = color;
            draw(planet)

        end

        function increaseRadius(planet)
            % Purpose: Increase the radius of the planet
            hide(planet)
            planet.radius = planet.radius + 0.1;
            draw(planet)

        end

        function decreaseRadius(planet)
            % Pupose: Decrease the radius of the planet
            hide(planet)
            planet.radius = planet.radius - 0.1;
            draw(planet)

        end

        function increaseOrbitRadius(planet, sun)
            % Increase the distance from the sun to the planet
            hide(planet)
            xDistance = planet.xCoordinate - sun.xCoordinate; 
            yDistance = planet.yCoordinate - sun.yCoordinate; 
            rad = sqrt(xDistance^2 + yDistance^2);
            newRad = rad + 0.1;
            planet.xCoordinate = newRad * cos(planet.deltaTheta);
            planet.yCoordinate = newRad * sin(planet.deltaTheta);
            draw(planet)

        end

        function decreaseOrbitRadius(planet, sun)
            % Decrease the distance from the sun to the planet
            hide(planet)
            xDistance = planet.xCoordinate - sun.xCoordinate; 
            yDistance = planet.yCoordinate - sun.yCoordinate; 
            rad = sqrt(xDistance^2 + yDistance^2);
            rad = rad - 0.1;
            planet.xCoordinate = rad * cos(planet.deltaTheta);
            planet.yCoordinate = rad * sin(planet.deltaTheta);
            draw(planet)

        end
    
        function draw(obj)
            % Purpose: draw the object
            center = [obj.xCoordinate obj.yCoordinate]; % Center 
            theta = linspace(0, 2 * pi); % Theta

            % Coordinates for drawing circle
            planetX = center(1) + obj.radius * cos(theta);
            planetY = center(2) + obj.radius * sin(theta);

            % Plot the circle
            obj.plottedObject = plot(planetX, planetY, obj.color);
            fill(planetX, planetY, obj.color)
    
        end
         
        function hide(obj)
            % Purpose hide previous instance of object when moving
            OGColor = obj.color; 
            obj.color = 'k';
            draw(obj)
            obj.color = OGColor;
   
        end
    
        function orbit(obj, sun)
            % Purpose: move object along circular orbit
            for i = 1:50
                hide(obj) % Hide previous state of object

                % Coordinates to draw planet
                xDistance = obj.xCoordinate - sun.xCoordinate; 
                yDistance = obj.yCoordinate - sun.yCoordinate; 
                rad = sqrt(xDistance^2 + yDistance^2); % radius of orbit

                obj.deltaTheta = obj.deltaTheta + pi / 25; % Increment theta

                % New coordinates of planet
                newY = rad * sin(obj.deltaTheta); 
                newX = rad * cos(obj.deltaTheta); 

                % Set new coordinates to object coordinates
                obj.yCoordinate = newY;
                obj.xCoordinate = newX;

                % Draw object
                draw(obj)

                % Time delay
                pause(0.1);

            end

            obj.deltaTheta = 0;

        end

    end

end