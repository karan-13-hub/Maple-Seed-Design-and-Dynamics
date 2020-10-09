dR = 0.01;
dt = 0.01;
t = 0:dt:25;
R = 0:dR:15;
rho = 1.225e-6;
ai = 0.313;
g = 980;
S = 0;
SL = 0;
cd = 1.98;
m = 0.3;
v = 1500;
a = 0;
d = 0;
omega = 1;
ang_acc = 0;
c_mean = 0;
C = zeros(1,length(R));
theta = zeros(1,length(R));
alpha = zeros(1,length(R));
cL = zeros(1,length(R));
for i = 1:length(R)
    C(i) = [1,R(i),R(i)^2,R(i)^3,R(i)^4,R(i)^5]*find_chord(2,3,6,10,6,0,0,5,8,12,14,15); 
    theta(i) = [1,R(i),R(i)^2]*find_theta(-2.6,13,-2,0,11,15);
    c_mean = c_mean + C(i); 
end
c_mean = c_mean/length(R);
B = 1-0.5*(c_mean/15);
Reff = 0:dR:15*B;
plt_a = zeros(size(t));
plt_v = zeros(size(t));
plt_d = zeros(size(t));
plt_omega = zeros(size(t));
for i = 1:length(t)
    plt_v(i) = v;
    plt_d(i) = d;
    plt_omega(i) = omega;
    %Finding Angle of attack and Coefficient of Lift
    [alpha,cL] = find_alpha_cl(theta,R,v,omega);
    %Finding Effective Surface area that generates Lift
    [S,SL] = find_surface_area(Reff,C,cL,dR);
    %Calculating Lift
    L = 0.5*rho*omega*omega*S;
    %Calculating Drag
    D = 0.5*rho*v*v*cd*SL;
    %Calculating acceleration
    a = g - 1/m*(L+D);
    plt_a(i) = a;
    %Calculate angular acceleration 
    ang_acc = 2*SL*v*a*(2*ai-2*ai*ai)/omega/S;
    %Calculate Angular Velocity
    omega = omega+ang_acc*dt;
    %Calculating Velocity and distance
    v = v + a*dt;
    d = d + v*dt; 
end
figure(1);
stem(R,C);
xlabel("Distance from the Seed");
ylabel("Chord length in 'cm'");
title("Chord Distance vs Distance from seed");
figure(2);
plot(R,theta);
xlabel("Distance from the Seed");
ylabel("Twist of angle in 'deg'");
title("Twist of angle vs Distance from seed");
figure(3);
plot(R,alpha);
xlabel("Distance from the Seed");
ylabel("Angle of Attack in 'deg'");
title("Angle of Attack vs Distance from seed");
figure(4);
plot(R,cL);
xlabel("Distance from the Seed");
ylabel("Coefficient of Lift");
title("Coefficient of Lift vs Distance from seed");
figure(5);
subplot(2,2,1)
plot(t,plt_a/100);
xlabel("time in sec ");
ylabel("acceleration in ms-2");
title("acceleration vs time");
subplot(2,2,2)
plot(t,plt_v/100);
xlabel("time in sec ");
ylabel("Velocity in ms-1");
title("velocity vs time");
subplot(2,2,3)
plot(t,plt_d/100);
xlabel("time in sec ");
ylabel("Distance in m");
title("Distance vs time");
subplot(2,2,4)
plot(t,plt_omega);
xlabel("time in sec ");
ylabel("Angular velocity in rad/sec");
title("Angular velocity vs time");