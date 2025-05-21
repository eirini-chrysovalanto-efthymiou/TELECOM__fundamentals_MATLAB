
%---------------------------------%
% BASIC FUNCTIONS GUIDE FOR MATLAB/OCTAVE
%---------------------------------%

%---------------------------------%
% FUNCTION SYNTAX
%---------------------------------%
function out = functionName(inputs)
    % Perform calculations
    out = ...; % the value to return
end
# You can have a many arguments you want 
%---------------------------------%
% CALLING A FUNCTION
%---------------------------------%
% Single-output example:
x = myrand2(7);
% x =
%    4.6050   4.2976
%    9.1112   5.5439
%    5.9749   8.2482
%    7.3116   6.7214
%    8.6454   2.8912
%    4.2559   8.6356
%    6.9147   2.4779

% Another example:
A = myrand2(5);

% Attempting multiple outputs:
% [x, y] = myrand2(8);

%---------------------------------%
% COMMON ERRORS
%---------------------------------%
% Error message:
%   error: myrand2: function called with too many outputs
%
% Explanation:
% Your function returns only one output, but you requested two.
% If the function could compute two values but you only captured
% one (x = myrand2(n)), only the first value is returned.

%---------------------------------%
% LOCAL VARIABLES
%---------------------------------%
% Variables defined inside a function (e.g., b) are local:
% They exist only during function execution and are not returned.

%---------------------------------%
% SAVING THE FILE
%---------------------------------%
% The function file (e.g., myrand2.m) must be saved before running.
% - In newer MATLAB versions, clicking in the Command Window auto-saves.
% - In older MATLAB or Octave, press Ctrl+S to save manually.

%---------------------------------%
% CREATING FUNCTIONS VIA GUI
%---------------------------------%
% MATLAB offers a simple GUI method:
% 1. Go to the Home tab.
% 2. Click New > Function.
% 3. MATLAB opens a template file (functionName.m) with comments
%    guiding you through the function structure automatically.
