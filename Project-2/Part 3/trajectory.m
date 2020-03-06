function[s,s_dot,s_dot_dot,t] = trajectory (sf,si,tf,ti)

% Define time
t = 0:0.001:4;
trsc = (5*abs(sf-si)/(((tf+ti)^2) - 4*ti*tf));

tc = (tf+ti)/2 - (1/2) * sqrt((((tf+ti)^2) * trsc-4 * (sf-si+trsc*ti*tf))/trsc);
for i = 1:length(t)
    if (t(i)<ti)
        s(i) = 0;
        s_dot(i) = 0;
        s_dot_dot(i) = 0;
    elseif (ti<=t(i) && t(i)<= tc)
            s(i) = si+(1/2) * trsc * ((t(i)-ti)^2);
            s_dot(i) = trsc * (t(i)-ti);
            s_dot_dot(i) = trsc;
    elseif (tc<t(i) && t(i)<=(tf-tc+ti))
        s(i) = si+trsc * (tc-ti) * (t(i)-ti-(tc-t(i))^2);
        s_dot(i) = trsc * (tc-ti);
        s_dot_dot(i) = 0;
    elseif ((tf-tc+ti)<t(i) && t(i)<=tf)
        s(i) = sf-(1/2) * trsc * ((tf-t(i))^2);
        s_dot(i) = trsc * (tf-t(i));
        s_dot_dot(i) = -trsc;
    elseif (t(i)>tf)
        s(i) = sf;
        s_dot(i) = 0;
        s_dot_dot(i) = 0;
    end 
end
