% (M,Pp)=(y(1),y(2))
function dy = clokModel1(t,y)

global eta n k3 k4 k5 k6 k7 Kb  % circadian clock

dy = zeros(2,1);
dy(1) = eta - (k3 + k4)*y(1) + k6*y(2) - (k7*y(1)*y(2)^n)/(Kb^n + y(2)^n);
dy(2) = k4*y(1) - (k5 + k6)*y(2) + (k7*y(1)*y(2)^n)/(Kb^n + y(2)^n);