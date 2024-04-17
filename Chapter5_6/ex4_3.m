%
%   Example 4-3 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[-3/2 1/2; 1/2 -3/2];
C=[1 -1];
O=obsv(A,C)
rank(O)
null(O)
