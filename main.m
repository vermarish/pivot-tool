clear all;
% Number of decision vars
n = 3;
% Number of constraints/slack vars
m = 3;

A = [
    2 3 1
    4 1 2
    3 4 2
];

% n: number of decision vars
% m: number of constraints / slack vars
m, n = size(A)

% Format:
%   max c'x
%   subject to Ax <= b
% so b and c are vertical
b = [5; 11; 8];
c = [5; 4; 3];

% TODO verify that:
%  * b has m rows
%  * c has n rows

tableau = [zeros(m,1), A,  eye(m),    b;
            -1,        c', zeros(1, m), 0];

% bottom-right entry has negative feasible value.


