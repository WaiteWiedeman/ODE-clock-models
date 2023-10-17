clc; clear; close all;

global v m k1 k2 k3 k4 k5 Ka  % circadian clock

v=18.18; m=10; k1=0.182; k2=2.02; k3=0.172; k4=0.141; k5=0.182; Ka=5; %22 hours

options = odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-4]);
[T,y] = ode45(@clokModel4,[0 295],[0 0 0],options);

figure(3)
clf
%subplot(2,1,2)
plot(T,y(:,1),'r',T,y(:,2),'g',T,y(:,3),'m','LineWidth',2.5)
hold on; grid on;
title('circadian clock model 2','FontSize',16)
legend('mRNA','Protein')
xlabel('Time [h]','FontSize',16)
ylabel('concentration [a.u.]','FontSize',16)
xlim([245 295])
set(gca,'fontsize',16)

figure(2)
clf
plot(y(:,1),y(:,2),'LineWidth',3)
hold on; grid on;
plot(y(1,1),y(1,2),'ro','MarkerFaceColor','r','MarkerSize',10)
title('Circadian Clock Model 2','FontSize',16)
xlabel('M','FontSize',16)
ylabel('P','FontSize',16)
set(gca,'FontSize',16)

CR = [T(:) y(:,1) y(:,2) y(:,3)];
