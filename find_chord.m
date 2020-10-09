function [C] = find_chord(c0,c1,c2,c3,c4,c5,r0,r1,r2,r3,r4,r5)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A = [1,r0,r0^2,r0^3,r0^4,r0^5;
    1,r1,r1^2,r1^3,r1^4,r1^5;
    1,r2,r2^2,r2^3,r2^4,r2^5;
    1,r3,r3^2,r3^3,r3^4,r3^5;
    1,r4,r4^2,r4^3,r4^4,r4^5;
    1,r5,r5^2,r5^3,r5^4,r5^5;
    ];
B = [c0;c1;c2;c3;c4;c5];
C = A\B;
end

