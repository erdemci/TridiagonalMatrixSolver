%% Veysel Erdemci 12.01.2015

function y=F(x)
%y=40.*x.*exp(x)
%y=5.*x.^3.*(1-x)-30.*x.*(1-2.*x);
% if x>=0 && x<1
%    y=-x^3+10*x^2+2*x-2;
% elseif x>1 && x<=2
%    y=-x^3-8*x^2+22*x-6;
delta=0.25;
if x>=0 && x<0.5
    y=x*(20*exp(x)*sin((pi*x)/2)^2 + 10*exp(x)*sin((pi*x)/2)^2*(x - 1) + 5*pi^2*exp(x)*cos((pi*x)/2)^2*(x - 1) + 20*pi*exp(x)*cos((pi*x)/2)*sin((pi*x)/2) - 5*pi^2*exp(x)*sin((pi*x)/2)^2*(x - 1) + 20*pi*exp(x)*cos((pi*x)/2)*sin((pi*x)/2)*(x - 1)) + 10*exp(x)*sin((pi*x)/2)^2 + 10*pi*exp(x)*cos((pi*x)/2)*sin((pi*x)/2)*(x - 1);
    %y=x*(5*pi*exp(x)*sin((pi*x)/2)*cos(x) - 10*exp(x)*cos((pi*x)/2)*cos(x) + 5*pi*exp(x)*sin((pi*x)/2)*sin(x) + (5*pi^2*exp(x)*cos((pi*x)/2)*sin(x))/4) - 5*exp(x)*cos((pi*x)/2)*cos(x) + (5*pi*exp(x)*sin((pi*x)/2)*sin(x))/2;
elseif x>=0.5 && x<1
    y=2*x*(10*exp(x)*sin((pi*x)/2)^2 + 10*exp(x)*sin((pi*x)/2)^2*(x - 1) + 10*pi*exp(x)*cos((pi*x)/2)*sin((pi*x)/2)*(x - 1)) + (x^2 + delta)*(20*exp(x)*sin((pi*x)/2)^2 + 10*exp(x)*sin((pi*x)/2)^2*(x - 1) + 5*pi^2*exp(x)*cos((pi*x)/2)^2*(x - 1) + 20*pi*exp(x)*cos((pi*x)/2)*sin((pi*x)/2) - 5*pi^2*exp(x)*sin((pi*x)/2)^2*(x - 1) + 20*pi*exp(x)*cos((pi*x)/2)*sin((pi*x)/2)*(x - 1)) - 10*exp(x)*sin((pi*x)/2)^2*(x - 1);
   %y=(x^2 + delta)*(5*pi*exp(x)*sin((pi*x)/2)*cos(x) - 10*exp(x)*cos((pi*x)/2)*cos(x) + 5*pi*exp(x)*sin((pi*x)/2)*sin(x) + (5*pi^2*exp(x)*cos((pi*x)/2)*sin(x))/4) - 2*x*(5*exp(x)*cos((pi*x)/2)*cos(x) + 5*exp(x)*cos((pi*x)/2)*sin(x) - (5*pi*exp(x)*sin((pi*x)/2)*sin(x))/2) + 5*exp(x)*cos((pi*x)/2)*sin(x);
end
