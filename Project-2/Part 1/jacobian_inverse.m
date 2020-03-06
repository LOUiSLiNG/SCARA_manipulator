function jacobian_inv = jacobian_inverse(q)

a1 = 0.5;
a2 = 0.5;
th1 = q(1);
th2 = q(2);
d3 = q(3);
th4 = q(4);

gain1 = q(5);
gain2 = q(6);
gain3 = q(7);
gain4 = q(8);
    
k_val = [gain1;gain2;gain3;gain4];

jacobian = [-a1*sin(th1)-a2*sin(th1+th2)        -a2*sin(th1+th2)        0       0;
            a1*cos(th1)+a2*cos(th1+th2)         a2*cos(th1+th2)         0       0;
            0                                   0                       -1      0;
            0                                   0                       0       0;
            0                                   0                       0       0;
            1                                   1                       0       1];

jacobian_useful=[jacobian(1,:);
                 jacobian(2,:);
                 jacobian(3,:);
                 jacobian(6,:)];
% jacobian = [-a1*sin(th1)-a2*sin(th1+th2)        -a2*sin(th1+th2)        0       0;
%             a1*cos(th1)+a2*cos(th1+th2)         a2*cos(th1+th2)         0       0;
%             0                                   0                       -1      0;
%             1                                   1                       0       -1];

jacobian_inv =(inv(jacobian_useful)) * k_val;  
end