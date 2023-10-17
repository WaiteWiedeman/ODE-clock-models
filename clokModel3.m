% (M,Pp)=(y(1),y(2))
function dy = clokModel3(t,y)

global v m n k1 k2 k3 Ka Kb  % circadian clock

dy = zeros(2,1);
dy(1) = v/(1 + (y(2)/Ka)^m) - k1*y(1);
dy(2) = k2*y(1) - k3*y(2)/(1+(y(2)/Kb)^n);