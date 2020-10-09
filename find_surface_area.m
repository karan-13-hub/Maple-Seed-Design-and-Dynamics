function [S,SL] = find_surface_area(Reff,C,cL,dR)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
S = 0;
SL = 0;
for i = 1:length(Reff)
    S = S + Reff(i)*Reff(i)*C(i)*cL(i)*dR;
    SL = SL + C(i)*dR;
end
end

