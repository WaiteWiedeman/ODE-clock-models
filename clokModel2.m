% (M,Pp)=(y(1),y(2))
function dy = clokModel2(t,y)

global v m n k1 k2 k3 k7 Ka Kb  % circadian clock

dy = zeros(2,1);
dy(1) = v/(1+(y(2)/Ka)^m)-k1*y(1);
dy(2) = k2*y(1)+k7*y(1)*y(2)^n/(Kb^n+y(2)^n)-k3*y(2);