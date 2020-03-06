function y = D_Kinematics(q)

a1 = 0.5;
a2 = 0.5;
th1 = q(1);
th2 = q(2);
d3 = q(3);
th4 = q(4);



Dkinematics = [cos(th1+th2)*cos(th4)-sin(th1+th2)*sin(th4)      -sin(th1+th2)*cos(th4)-cos(th1+th2)*sin(th4)        0       a2*cos(th1+th2)+a1*cos(th1);
               sin(th1+th2)*cos(th4)+cos(th1+th2)*sin(th4)      -sin(th1+th2)*sin(th4)+cos(th1+th2)*cos(th4)        0       a2*sin(th1+th2)+a1*sin(th1);
               0                                                0                                                   1       -d3;
               0                                                0                                                   0       1];

xc = [Dkinematics(1,4);Dkinematics(2,4);Dkinematics(3,4);th1+th2+th4];
y = xc;
end

