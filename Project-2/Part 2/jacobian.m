function jacobian = jacobian(q) 
    a1 = 0.5;
    a2 = 0.5;
    th1 = q(1);
    th2 = q(2);
    d3 = q(3);
    th4 = q(4);
    
    th1_dot = q(5);
    th2_dot = q(6);
    d3_dot = q(7);
    th4_dot = q(8);
    
    joint_velocities = [th1_dot;th2_dot;d3_dot;th4_dot];
    
    jacobian_ = [-a1*sin(th1)-a2*sin(th1+th2)        -a2*sin(th1+th2)        0       0;
                a1*cos(th1)+a2*cos(th1+th2)         a2*cos(th1+th2)         0       0;
                0                                   0                       -1      0;
                0                                   0                       0       0;
                0                                   0                       0       0;
                1                                   1                       0       1];

    jacobian_useful=[jacobian_(1,:);
                     jacobian_(2,:);
                     jacobian_(3,:);
                     jacobian_(6,:)];
    % jacobian = [-a1*sin(th1)-a2*sin(th1+th2)        -a2*sin(th1+th2)        0       0;
    %             a1*cos(th1)+a2*cos(th1+th2)         a2*cos(th1+th2)         0       0;
    %             0                                   0                       -1      0;
    %             1                                   1                       0       -1];
    jacobian = jacobian_useful * joint_velocities;
end