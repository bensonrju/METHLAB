% Author: Justin Benson, University of Michigan-Dearborn
% email address: bensonju@umich.edu
% January 2024; Last revision: 16-January-2024
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none

function [titleObj, subTitleObj] = ComplexPlot(z, varargin)

% ComplexPlot - Creates a 2D complex plane (if necessary)
%                with real values on the x-axis and 
%                imaginary values on the y-axis 
%                and then plots the value            
%
% Inputs: 
%        z - Complex number expression to plot
% plotName - Title of the plot
%
% Outputs:
%    titleObj - Object reference to the title of the plot
% subTitleObj - Object reference to the subtitle of the plot
%
%+-----+-----+-----+ BEGIN CODE +-----+-----+-----+

    % Check if there is a plot title
    %  if there is none, simply add it to the existing plot
    if isempty(varargin)
        plot(real(z),imag(z),"o");
    
    elseif length(varargin) == 1
        plotName = varargin{1};
    
        figure('Name', plotName, 'NumberTitle', 'off');
        plot(real(z),imag(z),"o");

        [titleObj, subTitleObj] = title(plotTitle);

        xlabel("Real Axis   Re(z)");
        ylabel("Imaginary Axis   Im(z)");

        box on;
        grid on;
        hold on;
        axis equal;

    else 
        ME = MException('JBComponents:tooManyArgs', ...
            'Too many arguments passed to ComplexPlot');
        throw(ME)
    end

%+-----+-----+-----+ END OF CODE +-----+-----+-----+

