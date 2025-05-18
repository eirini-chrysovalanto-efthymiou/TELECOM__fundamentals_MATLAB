
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
A(3, :) = 0;    % The colon `:` means "all columns", and `= 0` sets all elements in row 3 to zero.
               % This does not reduce the size of the matrix, since the space for those elements was already allocated.
               % Zero is simply treated as a new value replacing the existing elements.


% ----------------------- Modifying Matrix Values -----------------------

x(1:end, 1) = 44;

%-------------------------Combining Matrices----------------------------%

A = [(1:2:5)', (2:2:6)'];
% A =
%    1   2
%    3   4
%    5   6

B = [(9:-2:5)', (8:-2:4)'];
% B =
%    9   8
%    7   6
%    5   4

C = [1 2 9 8;
     3 4 7 6;
     5 6 5 4;
     9 8 1 2;
     7 6 3 4;
     5 4 5 6];

%---------------- What does "combining matrices" mean? -----------------%
% Observe how matrices A and B are combined to form C:
% C =
%   A[1 2]   B[9 8]
%   A[3 4]   B[7 6]
%   A[5 6]   B[5 4]
%   B[9 8]   A[1 2]
%   B[7 6]   A[3 4]
%   B[5 4]   A[5 6]

% Vertical concatenation
C1 = [A; B];
% C1 =
%    1   2
%    3   4
%    5   6
%    9   8
%    7   6
%    5   4

B1 = [1; 1];
B2 = [2 2; 2 2];

% This gives an error due to incompatible vertical dimensions
% C2 = [B1; B2];   % ERROR: 2x1 vs 2x2

% Horizontal concatenation works here
C2 = [B1 B2];
% C2 =
%    1   2   2
%    1   2   2

C3 = [B1 B2 B1];
% C3 =
%    1   2   2   1
%    1   2   2   1

%-------------------------Matrix Transpose-----------------------------%
V = [2 3 4];
H = V';  % Transposing a row vector to a column vector

% Example: Observe how the element at row 1, column 2 becomes
% the element at row 2, column 1 after the transpose.
V(1,2);   % Output: 3
H(2,1);   % Output: 3

1:5        % This creates a row vector: [1 2 3 4 5]

1:5'       % This does NOT create a column vector!
           % Why? Because it's interpreted as: 1 to (5'), i.e., the transpose of 5.
           % Since 5 is a scalar (a 1x1 matrix), transposing it does nothing.
           % Therefore, this still results in the row vector [1 2 3 4 5].

(1:5)'     % This correctly creates a column vector:
           %    1
           %    2
           %    3
           %    4
           %    5

% Summary:
% - In MATLAB, the transpose operator (') has lower precedence than the colon operator.
% - So writing 1:5' is the same as 1:(5'), which is just 1:5.
% - To transpose the full vector, use parentheses: (1:5)'

%-------------------------Arithmetic Operations------------------------%

% A, B
A, B  % Displays both matrices one after the other

% Matrix addition: both matrices must have the same dimensions
A + B;
% Result:
%   10  10
%   10  10
%   10  10

%-------------------- Element-wise Multiplication ---------------------%
A .* B;
% Result:
%     9   16
%    21   24
%    25   24

% Check sizes in a row vector
[size(A), size(B)]
% Result: 3 2 3 2

% Standard matrix multiplication: requires inner dimensions to match
A = A';  % Transpose A to make it 2x3
% Now A * B works:
% A =
%    1   3   5
%    2   4   6
% A * B =
%   55   46
%   76   64

% Rule: For A * B to be valid, the number of columns in A must match
% the number of rows in B. Outer dimensions determine the result size.

%-------------------- Matrix Division --------------------%
% X ./ Y or X .\ Y
% Both matrices must have the same dimensions.

% X ./ Y → each element of X is divided by the corresponding element of Y.
% X .\ Y → each element of Y is divided by the corresponding element of X (reversed).

% Try them out in the command window to see the effect.

2^3  % Raises 2 to the power of 3 (scalar exponentiation)

%--------- Common Arithmetic Practices - How to Avoid Mistakes --------%

% Example 1: Element-wise power
C = [1 2; 3 4];
B = [5 6; 7 8];
result = C.^B;  % Element-wise power, valid if C and B are same size

result = C.^2;  % Raises each element of C to the power of 2

% Note: This works regardless of whether C is square, because .^ is element-wise

%--- Additional scalar operations with matrices ---
% 1. C + 3 → adds 3 to every element (scalar broadcasting)
% 2. 2 * C → multiplies each element by 2
% 3. 2 ./ C → divides 2 by each element of C
% 4. C ./ 3 → divides each element of C by 3
% 5. A \ 2 → ERROR: matrix left division with a scalar is invalid
% 6. A .^ 2 → raises each element of A to the power of 2
% 7. 2 .^ A → raises scalar 2 to the power of each element of A

%------------ Summary Table -------------%
% Expression      | Error? | Type                  | Notes
%-----------------|--------|-----------------------|-----------------------------
% C + 3           | No     | Scalar + Matrix       | Scalar broadcasted
% 2 * C           | No     | Scalar * Matrix       | Element-wise multiplication
% 2 ./ C          | No     | Scalar ./ Matrix      | Element-wise division
% C ./ 3          | No     | Matrix ./ Scalar      | Element-wise division
% A \ 2          | Yes    | Matrix left division  | Not valid with scalar
% A .^ 2          | No     | Element-wise power    | Valid for any matrix
% 2 .^ A          | No     | Element-wise power    | Scalar raised to matrix powers

% TODO: Create a PDF summarizing the math behind matrix multiplication and division




