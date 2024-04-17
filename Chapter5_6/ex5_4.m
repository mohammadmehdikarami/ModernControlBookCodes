%
%   Example 5-4 of Modern Book
%   Copyright Hamid D. Taghirad 2013
%
clear all

num={[1] [2]; [-1] [1]};
den={[1 1] [1 2]; [1 1] [1 3]};
sys=tf(num,den)
sys2=minreal(ss(sys))


s=tf('s');
mysys=[1/(s+1)  2/(s+2); -1/(s+1)  1/(s+3)]
myss=minreal(ss(mysys))

clc
s=zpk('s');
G11=1/(s+1);
G12=2/(s+2);
G21=-1/(s+1);
G22=1/(s+3);

systemnames = 'G11 G12 G21 G22';
inputvar = '[u{2}]';
input_to_G11 = '[u(1)]';
input_to_G12 = '[u(2)]';
input_to_G21 = '[u(1)]';
input_to_G22 = '[u(2)]';
outputvar = '[G11+G12; G21+G22]';

sysoutname = 'G';
cleanupsysic = 'yes';
sysic
G.InputName={'u1' 'u2'}; % Set the input names
G.OutputName={'y1' 'y2'}; % Set the output names
G=(ss(G));
minreal(G)



