function [p,p_dot,p_dot_dot] = p;

% Position
% Velocity
% Acceleration

clc
clear all
close all

% Define time
t = 0:0.001:4;

p_0 = [0;       -0.80;      0];
p_1 = [0;       -0.80;      0.5];
p_2 = [0.5;     -0.6;       0.5];
p_3 = [0.8;      0;         0.5];
p_4 = [0.8;      0;         0];

s_f1 = norm(p_0-p_1);
s_i1 = 0;
t_f1 = 0.6;
t_i1 = 0;
[s1, s1_dot, s1_dot_dot] = trajectory(s_f1, s_i1, t_f1, t_i1);

s_f2 = norm(p_1-p_2);
s_i2 = 0;
t_f2 = 2.0;
t_i2 = 0.6-0.2;
[s2, s2_dot, s2_dot_dot] = trajectory(s_f2, s_i2, t_f2, t_i2);

s_f3 = norm(p_2-p_3);
s_i3 = 0;
t_f3 = 3.4;
t_i3 = 2-0.2;
[s3, s3_dot, s3_dot_dot] = trajectory(s_f3, s_i3, t_f3, t_i3);

s_f4 = norm(p_3-p_4);
s_i4 = 0;
t_f4 = 4.0;
t_i4 = 3.4-0.2;
[s4, s4_dot, s4_dot_dot] = trajectory(s_f4, s_i4, t_f4, t_i4);


% Plot trajectory
figure(1);
for i=1:length(s2)
    p(:,i) = p_0 + s1(i) * (p_1-p_0)/norm(p_0-p_1) + s2(i) * (p_2-p_1)/norm(p_2-p_1) + s3(i) * (p_3-p_2)/norm(p_2-p_3) + s4(i) * (p_4-p_3)/norm(p_3-p_4);

end 
plot3(p(1,:),p(2,:),p(3,:));
hold on
title('Trajectory');
grid;

figure(4)
grid;
subplot(3,1,1)
plot(t, p(1,:));
title('Position');
subplot(3,1,2)
plot(t, p(2,:));
subplot(3,1,3)
plot(t, p(3,:));

% Plot Velocity
for i=1:length(s2_dot)
    p_dot(:,i) = s1_dot(i) * (p_1-p_0)/norm(p_0-p_1) + s2_dot(i) * (p_2-p_1)/norm(p_1-p_2) + s3_dot(i) * (p_3-p_2)/norm(p_2-p_3) + s4_dot(i) * (p_4-p_3)/norm(p_3-p_4);
end

figure(2)
grid;
subplot(3,1,1)
plot(t, p_dot(1,:));
title('Velocity');
subplot(3,1,2)
plot(t, p_dot(2,:));
subplot(3,1,3)
plot(t, p_dot(3,:));


% Plot Accelerationm
for i=1:length(s2_dot_dot)
    p_dot_dot(:,i) = s1_dot_dot(i) * (p_1-p_0)/norm(p_0-p_1) + s2_dot_dot(i) * (p_2-p_1)/norm(p_1-p_2) + s3_dot_dot(i) * (p_3-p_2)/norm(p_2-p_3) + s4_dot_dot(i) * (p_4-p_3)/norm(p_3-p_4);
end


figure(3)
grid;
subplot(3,1,1)
plot(t, p_dot_dot(1,:));
title('Acceleration');
subplot(3,1,2)
plot(t, p_dot_dot(2,:));
subplot(3,1,3)
plot(t, p_dot_dot(3,:));

end
