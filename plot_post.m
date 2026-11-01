t = out.simout.Time;
X  = out.simout.Data;

tau = X(:,1);
theta = X(:,2);
omega_sat = X(:,3);
omega_wheel = X(:,4);

figure(2); clf; set(gcf, 'Color', 'w');
subplot(4,1,1)
plot(t,tau, 'LineWidth',1.4); grid on
ylabel('\tau [N·m]'); title('Torque Input')

subplot(4,1,2)
plot(t, rad2deg(theta), 'LineWidth',1.4); grid on
ylabel('\theta [deg]'); title('Attitude Angle')

subplot(4,1,3)
plot(t, omega_sat, 'LineWidth',1.4); hold on
plot(t, omega_wheel, 'LineWidth',1.4)
grid on; ylabel('\omega [rad/s]'); xlabel('Time [s]');
legend('\omega_{sat}','\omega_{w}','Location','best')
title('Angular Velocities')

subplot(4,1,4)
plot(t, J_sat*omega_sat, 'LineWidth',1.4); hold on
plot(t, J_rw*omega_wheel, 'LineWidth',1.4)
grid on; ylabel('H [N.m.s]'); xlabel('Time [s]');
legend('\H_{sat}','\H_{w}','Location','best')
title('Angular Momentum')