function dy = reEntryDynamics_cont(t,xk)
% global T
%  dt=50*10^(-3);
% dt=T;
beta0 = -0.59783;
R0 = 6374;
Gm0 = 3.986e5;
H0 = 13.406;
%% Compute gravity and drag coefficient
G = computeG(xk(1:2),Gm0);
D = computeD(xk,beta0,R0,H0);

%% State dynamics
dy(1,1) = xk(3);
dy(2,1) = xk(4);
dy(3,1) = (D*xk(3) + G*xk(1));
dy(4,1) = (D*xk(4) + G*xk(2));
dy(5,1) = 0;
end
function G = computeG(r,Gm0)
R = sqrt(r(1)*r(1) + r(2)*r(2));
G = -Gm0/(R^3);
end
function D = computeD(x,beta0,R0,H0)
V = sqrt(x(3)*x(3) + x(4)*x(4));
beta = beta0 * exp(x(5));
R = sqrt(x(1)*x(1) + x(2)*x(2));
D = beta*exp((R0 - R)/H0)*V;
end