% (M,Pp)=(y(1),y(2))
function dy = clokModel5(t,y)

global v m n k1 k2 k3 k4 k5 k6 k7 Ka Kb % circadian clock

dy = zeros(2,1);
dy(1) = v/(1 + (y(3)/Ka)^m) - k1*y(1);
dy(2) = k2*y(1) - (k3 + k4)*y(2) + k6*y(3) - (k7*y(2)*y(3)^n)/(Kb^n + y(3)^n);
dy(3) = k4*y(2) - (k5 + k6)*y(3) + (k7*y(2)*y(3)^n)/(Kb^n + y(3)^n);