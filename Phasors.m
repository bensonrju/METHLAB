% Author: Justin Benson, University of Michigan-Dearborn
% email address: bensonju@umich.edu
% January 2024; Last revision: 16-January-2024
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none

classdef Phasor < matlab.mixin.CustomDisplay
    methods
        function displayScalarObject(obj)
            className = matlab.mixin.CustomDisplay.getClassNameForHeader(obj);
            scalarHeader = [className,' Dept: ',obj.Department];
            header = sprintf('%s\n',scalarHeader);
            disp(header)
            propgroup = getPropertyGroups(obj);
            matlab.mixin.CustomDisplay.displayPropertyGroups(obj,propgroup)
        end
    end
end