%
%   This program determiens the jordan form of 
%   matrices given in examples of the book
%   Copyright Hamid D. Taghirad 2013
%
% Inverted Pendulum
A=[ 0 1 0 0; 0 0 -9.8 0; 0 0 0 1; 0 0 19.6 0];
B=[0;1;0;1];
C=[1 0 0 0; 0 0 1 0];
[T,J]=jordan(A)
Bn=inv(T)*B
Cn=C*T

% Example 3-13
A=[0 1 0 3; 0 -1 1 10; 0 0 0 1; 0 0 -1 -2]
[T,J]=jordan(A)

