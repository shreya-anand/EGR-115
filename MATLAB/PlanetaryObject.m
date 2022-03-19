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

        function changeColor(planet)
            planet.color = 'b';
            draw(planet)

        end

        function increaseRadius(planet)
            hide(planet)
            planet.radius = planet.radius + 0.1;
            draw(planet)

        end

        function decreaseRadius(planet)
            hide(planet)
            planet.radius = planet.radius - 0.1;
            draw(planet)

        end
    
        function draw(obj)
            % Purpose: draw the object
            % fprintf('Draw: %.2f, %.2f\n', obj.xCoordinate, obj.yCoordinate);
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
                % fprintf('Orbit: %.2f, %.2f\n', obj.xCoordinate, obj.yCoordinate);

                % Coordinates to draw planet
                xDistance = obj.xCoordinate - sun.xCoordinate; 
                yDistance = obj.yCoordinate - sun.yCoordinate; 
                rad = sqrt(xDistance^2 + yDistance^2); % radius of orbit

                obj.deltaTheta = obj.deltaTheta + pi / 25; % Increment theta
                % New coordinates of planet
                newY = rad * sin(obj.deltaTheta); 
                newX = rad * cos(obj.deltaTheta); 
                % fprintf('new x and y: %.2f, %.2f\n', newX, newY);

                % Set new coordinates to object coordinates
                obj.yCoordinate = newY;
                obj.xCoordinate = newX;

                % Draw object
                draw(obj)
                % Time delay
                pause(0.1);

            end

        end

    end

end