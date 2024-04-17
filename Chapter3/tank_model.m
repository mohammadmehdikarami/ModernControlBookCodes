%
%   Model of the tank
%   Copyright Hamid D. Taghirad 2013
%
function xp=tank_model(t,x)
%   State variable x=l: Tank level
A=1; C=2.0;
F_in=0; % No disturbance input
u=0.1;  % Constant opening for valve 

xp=1/A*(F_in-C*u*sqrt(x));
end


 