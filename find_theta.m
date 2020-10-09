function [C] = find_theta(t0,t1,t2,r0,r1,r2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
A = [1,r0,r0^2;
    1,r1,r1^2;
    1,r2,r2^2;
    ];
B = [t0;t1;t2];
C = A\B;
end

