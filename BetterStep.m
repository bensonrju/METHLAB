function [p, t, titleObj, subTitleObj] = ...
BetterStep(transFunc, plotTitle, xAxis, yAxis, plotName)

%BetterStep - Plots a function with JB's standard settings
%
% function [p, t, titleObj] = ...
%   BetterStep(transFunc, plotTitle, xAxis, yAxis, plotName)
%
% Inputs:
% transFunc - Array of X values to plot
%  plotName - Title of the window of the plot
%     xAxis - x-axis label
%     yAxis - y-axis label
% plotTitle - Title of the Plot
%
% Outputs:
%           p - Array of Y-values plotted
%           t - Array of X-values to be plotted
%    titleObj - Object reference to the title of the plot
% subTitleObj - Object reference to the subtitle of the plot
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none

% Author: Justin Benson, University of Michigan-Dearborn
% email address: bensonju@umich.edu
% April 2023; Last revision: 22-April-2023

%------------- BEGIN CODE --------------

    figure('Name', plotName, 'NumberTitle', 'off');
    step(transFunc);
    [titleObj, subTitleObj] = title(plotTitle);
    xlabel(xAxis);
    ylabel(yAxis);
    box on;
    grid on;
    [p, t] = step(transFunc);
    
%------------- END OF CODE --------------