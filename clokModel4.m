% (M,Pp)=(y(1),y(2))
function dy = clokModel4(t,y)

global v m k1 k2 k3 k4 k5 Ka  % circadian clock

dy = zeros(2,1);
dy(1) = v/(1 + (y(3)/Ka)^m) - k1*y(1);
dy(2) = k2*y(1) - k3*y(2);
dy(3) = k4*y(2) - k5*y(3);