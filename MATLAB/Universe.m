classdef Universe

    properties
        sun
        planet
    end

    methods

        function obj = Universe(s, p)
            obj.sun = s;
            obj.planet = p;
        end

        function objSun = getSun(obj)
            objSun = obj.sun;
        end

        function objPlanet = getPlanet(obj)
            objPlanet = obj.planet;
        end

        function changePlanetColor(obj)
            p = getPlanet(obj);
            changeColor(p)
            
        end

        function startUniverse(obj)
            p = getPlanet(obj);
            s = getSun(obj);
            draw(s)
            hold on
            draw(p)
            set(gca, 'Color', 'k') % Set background to black
            axis([-6 5 -7 7])
            axis equal
            orbit(p, s)
        end

        function increasePlanetRadius(obj)
            p = getPlanet(obj);
            increaseRadius(p);

        end

        function decreasePlanetRadius(obj)
            p = getPlanet(obj);
            decreaseRadius(p);

        end

    end

end