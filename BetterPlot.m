function [titleObj, subTitleObj] = BetterPlot(x, y, ...
    plotTitle, xAxis, yAxis, plotName)

%BetterPlot - Plots a an array of values
%              with JB's standard settings
%
% function [p, t, titleObj] = ...
%   BetterPlot(transFunc, plotTitle, xAxis, yAxis, plotName)
%
% Inputs:
%         x - Array of X values to plot
%         y - Array of Y values to plot
%  plotName - Title of the window of the plot
%     xAxis - x-axis label
%     yAxis - y-axis label
% plotTitle - Title of the Plot
%
% Outputs:
%    titleObj - Object reference to the title of the plot
% subTitleObj - Object reference to the subtitle of the plot
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none

% Author: Justin Benson, University of Michigan-Dearborn
% email address: bensonju@umich.edu
% April 2023; Last revision: 5-June-2023

%------------- BEGIN CODE --------------

    figure('Name', plotName, 'NumberTitle', 'off');
    plot(x, y, 'r');
    
    [titleObj, subTitleObj] = title(plotTitle);
    xlabel(xAxis);
    ylabel(yAxis);
    box on;
    grid on;
    hold on;

%------------- END OF CODE --------------