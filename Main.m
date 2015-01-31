%% Veysel Erdemci 12.01.2015

clear all;clc;
xa=0;xb=1;
n=9;
h=1/(n+1);
for i=1:n
    x(i)=h*i;
end
b(1)=0; a(n)=0;
d(1)=k(h/2)+k(3*h/2)+q(h)*h^2;
a(1)=-k(3*h/2);
b(n)=-k(1-3*h/2);
d(n)=k(1-3*h/2)+k(1-h/2)+q(1-h)*h^2;
for i=1:n
   r(i)=F(i*h)*h^2;
end
for i=2:n-1
  b(i)=-k((i-1/2)*h);
  d(i)=k((i-1/2)*h)+k((i+1/2)*h)+q(i*h)*h^2;
  a(i)=-k((i+1/2)*h);%alt, köþegen ve üst vektörler
end
a(1)=a(1)/d(1);
r(1)=r(1)/d(1);
for i=2:n-1
   denom=d(i)-b(i)*a(i-1);
   if(denom==0)
     error('hata Payda 0 oldu'); 
   else
     a(i)=a(i)/denom;
     r(i)=(r(i)-b(i)*r(i-1))/denom;
   end
end
 r(n)=(r(n)-b(n)*r(n-1))/(d(n)-b(n)*a(n-1));
 %Geriye Doðru u(i)lerin hesaplanmasý
 u(n)=r(n);
 for i=n-1:-1:1
     u(i)=r(i)-a(i)*u(i+1);
 end
 for i=1:n
     fprintf('u%d= %1.20e \n',i,u(i));
 end
 fprintf(' \n');
for i=1:n
    w(i)=uex(i*h);
     fprintf('gercek%d= %1.20e \n',i,uex(i*h));
end
fprintf(' \n');
eps_Mutlak=norm(u-w,inf);
eps_Oran=norm((u-w)./w,inf);
    fprintf('Mutlak Hata= %1.4d \n',eps_Mutlak)
fprintf('Oran Hatasý=%1.4d ',eps_Oran)
plot(x,w,x,u,'.r')
