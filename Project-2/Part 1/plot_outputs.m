
t = out.tout;

error = out.error.signals.values;
error_dot = out.error_dot.signals.values;
q = out.q.signals.values;
q_dot = out.q_dot.signals.values;
q_dot_dot = out.q_dot_dot.signals.values;

figure(1)
clf
subplot(4, 1, 1)
plot(t, error(:,1))
title('error1')
hold on
subplot(4,1,2)
plot(t, error(:,2))
title('error2')
subplot(4,1,3)
plot(t, error(:,3))
title('error3')
subplot(4,1,4)
plot(t, error(:,4))
title('error4')

figure(2)
clf
subplot(4, 1, 1)
plot(t, error_dot(:,1))
title('error_dot1')
hold on
subplot(4,1,2)
plot(t, error_dot(:,2))
title('error_dot2')
subplot(4,1,3)
plot(t, error_dot(:,3))
title('error_dot3')
subplot(4,1,4)
plot(t, error_dot(:,4))
title('error_dot4')


figure(3)
clf
subplot(4, 1, 1)
plot(t, q(:,1))
title('q1')
hold on
subplot(4,1,2)
plot(t, q(:,2))
title('q2')
subplot(4,1,3)
plot(t, q(:,3))
title('q3')
subplot(4,1,4)
plot(t, q(:,4))
title('q4')

figure(4)
clf
subplot(4, 1, 1)
plot(t, q_dot(:,1))
title('q_dot1')
hold on
subplot(4,1,2)
plot(t, q_dot(:,2))
title('q_dot2')
subplot(4,1,3)
plot(t, q_dot(:,3))
title('q_dot3')
subplot(4,1,4)
plot(t, q_dot(:,4))
title('q_dot4')

figure(5)
clf
subplot(4, 1, 1)
plot(t, q_dot_dot(:,1))
title('q_dot_dot1')
hold on
subplot(4,1,2)
plot(t, q_dot_dot(:,2))
title('q_dot_dot2')
subplot(4,1,3)
plot(t, q_dot_dot(:,3))
title('q_dot_dot3')
subplot(4,1,4)
plot(t, q_dot_dot(:,4))
title('q_dot_dot4')