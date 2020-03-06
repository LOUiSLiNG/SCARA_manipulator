t = out.tout;

error = out.error_1.signals.values;
q = out.q_1.signals.values;

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

