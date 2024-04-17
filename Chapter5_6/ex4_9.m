%
%   Example 4-9 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[-3/2 1/2; 1/2 -3/2];
B=[1/2; 1/2];
C=ctrb(A,B)
rank(C)
null(C)
