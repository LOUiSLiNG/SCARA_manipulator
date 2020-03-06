function n  = n_q_qdot(input)
q = [input(1); input(2); input(3); input(4)];
q_dot = [input(5); input(6); input(7); input(8)];
Fm1 = 0.0001; 
Fm2 = 0.0001;
Fm3 = 0.01;
Fm4 = 0.005;
g = 9.8;

C = [ -(55*q_dot(2)*sin(q(2)))/8, -(55*sin(q(2))*(q_dot(1) + q_dot(2)))/8, 0, 0;
    (55*q_dot(1)*sin(q(2)))/8,  0, 0, 0;
    0, 0, 0, 0;
    0, 0, 0, 0];

F = diag([Fm1 Fm2 Fm3 Fm4]);
G = [0; 0; -10*g; 0];
n = C * q_dot + F * q_dot + G;

end


