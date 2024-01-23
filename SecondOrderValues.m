% Helper Function for Getting 2nd-Order Values

function [Wn, zeta, Ts, Tp, pOS] = SecondOrderValues(num, den, part)

% =====+=====+=====+=====+=====+=====+=====+=====+
% SecondOrderValues - Helper Function for 
%                     Getting 2nd-Order Values
% =====+=====+=====+=====+=====+=====+=====+=====+
%
% function [Wn, zeta, Ts, Tp, pOS] = ...
%   SecondOrderValues(num, den, part)
%
% Inputs:
%   num - Numerator of transfer function
%   den - Denominator of transfer function
%
% Outputs:
%    Wn - Natural Response Frequency
%  zeta - Damping Coefficient
%    Ts - Time to get within ±2% of Steady State
%    Tp - Peak Time
%   pOS - y-axis label
% 
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

    Wn = sqrt(den(3));
    zeta = den(2)/(2*Wn);
    Ts = 4/(zeta*Wn);
    Tp = pi/(Wn*sqrt(1-zeta^2));
    pOS = 100*exp((-zeta*pi)/sqrt(1-zeta^2));

%------------- END OF CODE --------------