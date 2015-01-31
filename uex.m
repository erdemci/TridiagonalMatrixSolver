%% Veysel Erdemci 12.01.2015

function v=uex(x)
%v=5.*x.^3.*(1-x);
%v=10.*exp(x).*x.*(1-x);
%v=5*exp(x)*cos((pi*x)/2)*sin(x);
v=10*exp(x)*(1-x)*sin(pi*x*0.5)^2;

