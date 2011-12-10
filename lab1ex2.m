%% ASKHSH 2 
%% Erwthma a)
n=1:5;%%Xronos tou simatos
 x=rand(1,5);  % dhmiourgoume ena tyxaio dianisma.
% 
 N=length(x);

for k=0:N-1
for n=0:N-1
X1(n+1)=x(n+1).*exp(-j*2*pi*n*k/N);
end
X(k+1)=sum(X1);
end
X
 Z=fft(x);  % tsekaroume an ta apotelesmata mas sumpiptoun me thn etoimh sinarthsh matlab.
 
 %% erwthma b)
 for n=0:N-1
     for k=0:N-1
         Xn1(k+1)=Z(k+1)*exp(j*2*pi*n*k/N);
     end
         Xn(n+1)=sum(Xn1);
 end
         
 Xn=Xn/N;
 



