%
%   Example 6-10 of Modern Book
%   Copyright Hamid D. Taghirad 2014
%
clear all
A=[-2 -1 2; -1 -2 2; -2 0 2];
B=[0 0; 0 1;1 0];
f=[1;1];
b=B*f;
[w,e]=eig(A);
v=inv(w);
p=v(1:2,:)*b;

