function [alpha,cL] = find_alpha_cl(theta,R,v,omega)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
alpha = zeros(size(theta));
cL = zeros(size(theta));
for i = 1:length(theta)
    alpha(i) = atan2(v,omega*R(i))*180/pi + theta(i);
    cL(i) = 5.450 - 0.373 * alpha(i) + 0.0114*alpha(i)^2 - 0.000142*alpha(i)^3 + 6.096e-7*alpha(i)^4;
end
end

