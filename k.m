%% Veysel Erdemci 12.01.2015

function w=k(x)
%w=1+0.*x;
%if x>=0 && x<1
   %w=1+x;
%elseif x>=1 && x<=2
   %w=3-x; 
 delta=0.25;  
 if x>=0 && x<0.5
   w=x;
elseif x>=0.5 && x<=1
   w=x^2+delta;    
end
