% Temperature Application 
% Define some constants 
Ti = 70;
Tb = 170;
% Use ode45 to solve the differential equation
% Solve for the temperature after 10s
[t,T] = ode45(@(t,T)(Tb-T)/10, [0 10], Ti);
n = length(T);
fprintf('The temperature after 10s is %.1f\260F\n',T(n));
% Solve for the temperature after 20s
[t,T] = ode45(@(t,T)(Tb-T)/10, [0 20], Ti);
n = length(T);
fprintf('The temperature after 20s is %.1f\260F\n',T(n));
% Solve for the temperature after 40s
[t,T] = ode45(@(t,T)(Tb-T)/10, [0 40], Ti);
n = length(T);
fprintf('The temperature after 40s is %.1f\260F\n',T(n));
% Logical comparison
near160F = T>159.9 & T<160.4;
time160F = t(near160F);
fprintf("It will take %.1f seconds for the temperature to " + ...
    "reach 160\260F\n",time160F);
% Plot the for the temperature for the first 40 seconds
plot(t,T,'square')
ylim([0 180])
grid on 
title("Temperature Of An Object Over Time")
xlabel("Time(s)")
ylabel("Temperature(F)")
