

%-------------Exercise_1--------------------------%
# Write a script that creates and displays three matrices with different dimensions, filled with zeros:

A row vector A with 5 elements (1x5).

A column vector B with 6 elements (6x1).

A square matrix C of size 4x4.
% Create a 1x5 matrix
A = zeros(1,5);

% Create a 6x1 matrix
B = zeros(6,1);

% Create a 4x4 matrix
C = zeros(4,4);


% Display the matrices
disp(A)
disp(B)
disp(C)


%-------------Exercise_2--------------------------%

# Θα σου δωσω 3 πινακες αναλθτικα γραμμενους , με την θεωρια της ανω κατω τελειας δοκιμασε να τους γραψεις πιο εξυπνα !

A = [
1 2 3 4 5;
-5 -3 -1 1 3;
100 90 80 70 60;
9 4 -1 -6 -11
];

B = [
exp(1) exp(2) exp(3) exp(4) exp(5);
log(5) log(4) log(3) log(2) log(1);
cos(pi) cos(3*pi/4) cos(pi/2) cos(pi/4) cos(0)
];


C = [
1 2;
3 4;
5 6;
7 8;
9 10;
11 12;
13 14;
15 16
];


%------------------%

% Matrix A: using colon operator with appropriate steps for each row
A = [
    1:5;          % row 1: 1 to 5
    -5:2:3;       % row 2: from -5 to 3 with step 2
    100:-10:60;   % row 3: from 100 down to 60 with step -10
    9:-5:-11      % row 4: from 9 down to -11 with step -5
];

% Matrix B: using element-wise operations on vectors
B = [
    exp(1:5);             % row 1: exp of 1 to 5
    log(5:-1:1);          % row 2: log of 5 down to 1
    cos(pi:-pi/4:0)       % row 3: cos from pi down to 0 in steps of pi/4
];

% Matrix C: create two column vectors and concatenate horizontally
C = [(1:2:15)', (2:2:16)'];


#  Tip:
Always use square brackets [ ] to create arrays and vectors.
Parentheses ( ) are used for indexing, function calls, and grouping operations.


%-------------Exercise_3--------------------------%

#Copy the first row of matrix A into X.
#Copy the second row of B into Y, and the second column of C into Z.
#Then, create the concatenation of matrices X and Y into:
#a 2×5 matrix, and a 1×10 row vector.


% Given matrices A, B, C (assumed already defined)

% Copy the first row of matrix A into X (1x5 vector)
X = A(1, :);

% Copy the second row of B into Y (1x5 vector)
Y = B(2, :);

% Copy the second column of C into Z (8x1 vector)
Z = C(:, 2);

% Concatenate X and Y vertically to create a 2x5 matrix
concat_matrix = [X; Y];

% Concatenate X and Y horizontally to create a 1x10 row vector
concat_vector = [X, Y];

% Display sizes and results
disp('Size of A:')
disp(size(A))

disp('First row of A (X):')
disp(X)

disp('Second row of B (Y):')
disp(Y)

disp('Second column of C (Z):')
disp(Z)

disp('Concatenation into 2x5 matrix:')
disp(concat_matrix)

disp('Concatenation into 1x10 row vector:')
disp(concat_vector)

%------------------%
%  WARNING – COMMON MISTAKE 
% Using A(1:5) does NOT return the first row of matrix A.
%
% Explanation:
% In MATLAB, when you write A(1:5), MATLAB treats A as a single vector
% by stacking its columns (column-major order).
%
% For example:
% A = [ 1  2  3;
%       4  5  6 ];
%
% A(:) = [1; 4; 2; 5; 3; 6];  % Flattened column-wise
% So, A(1:5) = [1; 4; 2; 5; 3]  --> This is NOT the first row!
%
%  Correct way to access the first row: A(1, :)




%-------------Exercise_3--------------------------%

# Solve the following system of linear equations for the unknowns x, y, z, w
    x  + 2y  -  z + 3w = 8
   2x  + 3y  +  z + 5w = 12
    x  +  y  + 4z +  w = 9
  -3x  -  y  + 2z -  w = 3

%------------------%

% Coefficient matrix
A = [ 1  2 -1  3;
      2  3  1  5;
      1  1  4  1;
     -3 -1  2 -1];

% Right-hand side vector
B = [8; 12; 9; 3];

% Solve the system A * X = B
X = A \ B;

% Display the results
disp('Solutions:')
fprintf('x = %.4f\n', X(1))
fprintf('y = %.4f\n', X(2))
fprintf('z = %.4f\n', X(3))
fprintf('w = %.4f\n', X(4))

















