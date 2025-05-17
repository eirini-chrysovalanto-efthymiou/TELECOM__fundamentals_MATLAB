
% ----------------------- Array and Matrix Basics -----------------------

% A matrix with 6 rows and 4 columns is called a 6x4 matrix.
% If we stack multiple such matrices, we get a 3D array.
% Example: a 3D matrix of size 6x4x2 means 6 rows, 4 columns, 2 layers (pages).

% A multidimensional array is also called a matrix.
% If it is one-dimensional, it can be called a vector.

xvalue = [1, 2, 10];
% xvalue = 1   2   10

X = [0 1 -1; 2.5 pi 100];
% X = [0     1.0000   -1.0000
%      2.5000  3.1416  100]

sqrt(2)      % returns 1.4142
sin(30)      % in radians → returns -0.9880
sind(30)     % in degrees → returns 0.5

A = [0 0; 1 1; 2 2];
size(A)
% returns 3   2 → 3 rows, 2 columns

x = [1 4 7];
y = [1; 2; 3];  % column vector

x = 1:3:7;  % x = 1   4   7
ints = 1:10;

colon(1, 3);  % same as 1:3

10:5:-4       % empty array since step is positive and end < start

% ----------------------- Accessing Matrix Elements -----------------------

x = [1:4; 5:8; 9:12];
x(2, 3);        % returns 7
center = x(2, 3);

x(2, 3) = 97;

% Creating new matrix by assigning to undefined variable:
xyz(2, 2) = 123;

x(4, 5) = 567;  % expands the matrix

x(1,1) = 99;
x = 99;         % overwrites x with scalar

x = [1 2 3; 4 5 6];
x(2, [1 3]);        % returns 4   6
x([2 1], 2);        % returns 5; 2
x([2 1 2], [3 1 1 2]);
% rows: 2,1,2 → columns: 3,1,1,2
% returns:
%   6   4   4   5
%   3   1   1   2
%   6   4   4   5

x(2, 1:3);      % 4 5 6
x(2, 1:3);      % same

x(2:-1:1, 3:-1:1);  % reverse both rows and columns
% returns:
%   6   5   4
%   3   2   1

x(2, end);      % returns last column of 2nd row → 6
% "end" is a keyword and cannot be used as a variable

x(1, end-1);        % returns 2
x(1, [end end-1]);  % returns 3  2

% You cannot use end+1 as an index in expressions like x(end+1) = ...
x(end+1, 1) = 12;

x(1, 1:2:end);       % returns 1   3 (every 2nd column)
x(3, end:-1:2);      % returns 0 0

x(1:end, 2);         % same as x(:, 2)
x(:, 2);

x(1, :);             % entire first row

% ----------------------- Modifying Matrix Values -----------------------

x(1:end, 1) = 44;

% ----------------------- Combining Matrices -----------------------
% (this section was left blank, can be extended if needed)
