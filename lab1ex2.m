
%% ASKHSH 2 
%% Erwthma a)
clear all;
n=[1:40];
x=randperm(length(n));
 N=length(n);

 
 
for k=0:N-1
for n=0:N-1
X1(n+1)=x(n+1).*exp(-j*2*pi*n*k/N);
end
X(k+1)=sum(X1);
end
X;
n=1:40;%%Xronos pou orizetai to shma
figure(1);
subplot(2,1,1)
stem(n,X,'filled')
 title('Metasximatismos fourier kata kataskeuh.');
 xlabel('n');
 ylabel('F(x[n])');

 Z=fft(x);  % Elenxoume an ta apotelesmata mas sumpiptoun me thn etoimh sinarthsh matlab
 
 subplot(2,1,2)
 stem(n,Z,'filled') 
 title('Metasximatismos fourier me tin etimh sinartish fft');
  xlabel('n');
 ylabel('F(x[n])');

 
 
 
 %% erwthma b)

 for n=0:N-1
     for k=0:N-1
         Xn1(k+1)=Z(k+1)*exp(j*2*pi*n*k/N);
     end
         X1(n+1)=sum(Xn1);
 end
 for i=0:N-1
 X1(i+1)=X1(i+1)/N;
 end
   
   n=1:40;
  figure(3);
  subplot(2,1,1);
 stem(n,x,'filled');
  title('Arxiko shma x[n]');
 xlabel('n');
 ylabel('x[n]');

subplot(2,1,2);
 stem(n,X1,'filled')
  title('Arxiko shma x[n] epeita apo anastrofo metasxhmatismo Fourier');
 xlabel('n');
 ylabel('F^-1(x[n])');

 


