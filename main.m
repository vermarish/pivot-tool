clear all;


% Format:
%   max c'x
%   subject to Ax <= b
% so b and c are vertical
A = [
    2 3 1
    4 1 2
    3 4 2
];
b = [5; 11; 8];
c = [5; 4; 3];

% n: number of decision vars            (cols)
% m: number of constraints / slack vars (rows)
m = size(A, 1);
n = size(A, 2);

% TODO verify that:
%  * b has m rows
%  * c has n rows

tableau = [zeros(m,1), A,  eye(m),    b;
            -1,        c', zeros(1, m), 0];

% bottom-right entry has negative feasible value.

% TODO figure out pretty output.