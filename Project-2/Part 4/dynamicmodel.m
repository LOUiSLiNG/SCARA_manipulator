function q_dot_dot  = dynamicmodel(input)
    u = input(1:4);
    q = [input(5); input(6); input(7); input(8)];
    q_dot = [input(9); input(10); input(11); input(12)];
    Fm1 = 0.0001; 
    Fm2 = 0.0001;
    Fm3 = 0.01;
    Fm4 = 0.005;
    g = 9.8;
    B = [(55*cos(q(2)))/4 + 139451/5000, (55*cos(q(2)))/8 + 28319/2500, -1/2, 11/10;
        (55*cos(q(2)))/8 + 28319/2500, 28319/2500, -1/2, 11/1;
        -1/2,  -1/2,   35,     0;
        11/10, 11/10,    0,     3];
    
    C = [ -(55*q_dot(2)*sin(q(2)))/8, -(55*sin(q(2))*(q_dot(1) + q_dot(2)))/8, 0, 0;
        (55*q_dot(1)*sin(q(2)))/8,  0, 0, 0
        ; 0, 0, 0, 0;
        0, 0, 0, 0];
    
    F = diag([Fm1 Fm2 Fm3 Fm4]);
    G = [0; 0; -10*g; 0];
    n = C * q_dot + F * q_dot + G;
    q_dot_dot = B\(u-n);

end
