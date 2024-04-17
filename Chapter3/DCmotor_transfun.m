%
%   Transfer functions for the DC motor
%   Copyright Hamid D. Taghirad 2013
%
clear all
A=[0 1 0; 0 0 4.438; 0 -12 -24];
b1=[0 ; 0; 20];
b2=[0; -7.396; 0];
B=[b1 b2];
C=[1 0 0];      % Note only \theta is used as output
D=[0 0];
DCM=ss(A,B,C,D);  % Note both inputs are considered
DCM_tf = tf(DCM);       % Conversion to transfer function
DCM_zpk = zpk(DCM);      % Conversion to zero-pole
