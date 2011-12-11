clear all;
close all;
clc;


n1=1:40;
x=sin(pi*n1);
n2=1:20;
y=cos(pi*n2);
figure(1)
subplot(2,1,1);
stem(n1,x,'filled')
title('x[n]=sin(pi*n1)');
xlabel('n1');
ylabel('x[n]')
subplot(2,1,2);
stem(n2,y,'filled')
title('y[n]=cos(pi*n2)');
xlabel('n2');
ylabel('y[n]')

lx=length(n1);
ly=length(n2);

lenh=abs(lx+ly-1);%Orizoume to epitrepto diasthma gia na ilopoih8ei i sinelixi

%%oria

nhmin=2%%orio sinelixis aristera -3-1=-4
nhmax=60%orio sinelixis dexia 1+5=6
nsin=nhmin:nhmax;
% %synelixi me tn mathimatikh synarthsh
h=zeros(1,len_n+1);
 for n=1:len_n
     for k=1:min(n,length(n1))
     if (len_n+1-k<=length(n2))
            h(n)=h(n)+x(k).*y(n-k+1);
     end
     end
 end
%Sinelixi kataskeuastika
n3=1:len_n;
figure(2);
subplot(2,1,1);
stem(h,n3,'filled');
xlabel('n');
ylabel('h[n]')
title('sinelixi kataskeuastika');


%Sinelixi me tin conv();
%%-------------------------------------------------------------------------
h2=conv(x,y);
subplot(2,1,2);
stem(n3,h2,'filled');
xlabel('n');
ylabel('h[n]')
title('sinelixi me thn sinarthsh conv');
%--------------------------------------------------------------------------
