clear
clc
global r

% r1=x(1);
% w1=x(2);
% r2=x(3);
% w2=x(4);
% r3=x(5);
% w3=x(6);
% r=x(7);
r=1.1;
r1=1.6881059940166;
r2=1.745223430876;
r3=2.4158283260926;
w1=0.111809;
w2=0.0178901;
w3=0.0000750444;
x0=[1.3,0.1,3,0.01,4,0.00001];
x0=[r1,w1,r2,w2,r3,w3];
options=optimset('MaxFunEvals',50000,'MaxIter',50000);
[x,fval]=fsolve(@D4sys,x0,options);
%  x=fmincon(@(x)(1-(6*x(2)+8*x(4)+24*x(6)))*log10(1-(6*x(2)+8*x(4)+24*x(6)))+6*x(2)*log10(x(2))+8*x(4)*log10(x(4))+24*x(6)*log10(x(6)),x0,[],[],[],[],[0,0,0,0,0,0],[50,1,50,1,50,1],@D3sys,options);
% x=fmincon(@(x)(1-(6*x(2)+8*x(4)+24*x(6)))*log10(1-(6*x(2)+8*x(4)+24*x(6)))+6*x(2)*log10(x(2))+8*x(4)*log10(x(4))+24*x(6)*log10(x(6)),7,[],[],[],[],[0,0,0,0,0,0,1.1],[10,1,10,1,10,1,10],@D3sys,options);
% [x,fval]=fmincon(@(x)(2*x(1)^8*x(2)+8*x(3)^8*x(4)+8*x(5)^8*x(6)*(2+x(7)^8)-105)^2,x0,[],[],[],[],[0,0,0,0,0,0,1.5],[10,1,10,1,10,1,10],@D3sys,options);
% [x,fval]=fmincon(@(x)-(1-(8*x(2)+16*x(4)+64*x(6))),7,[],[],[],[],[0,0,0,0,0,0,1.5],[10,1,10,1,10,1,10],@D4sys,options);
w0=1-((8*x(2)+16*x(4)+64*x(6)))
r1=x(1)
w1=x(2)
r2=x(3)
w2=x(4)
r3=x(5)
w3=x(6)
% r=x(7)

[c,ceq]=D3sys(x)