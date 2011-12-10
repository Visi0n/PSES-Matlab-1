
n=-4:6;
x=zeros(1,length(n));
%Kataskeuh tou shmatos ths eikonas.
 for i=1:length(n)
     if(n(i)==0||n(i)==1)
         x(i)=-2;
     elseif(n(i)==-2||n(i)==-1||n(i)==2||n(i)==3)
         x(i)=1;
     else
         x(i)=0;
     end
 end
%Apeikonish tou prwtou simatos {x[n]}
figure(1);
subplot(2,1,1)
stem(n,x,'filled');
ylim([-5 2]);
title('{x[n]}');
xlabel('n');
ylabel('x[n]');



%Apeikonish tou prwtou simatos {x[n-2]}
 for i=1:length(n)
     if(n(i)==2||n(i)==3)
         x2(i)=-2;
     elseif(n(i)==0||n(i)==1||n(i)==4||n(i)==5)
         x2(i)=1;
     else
         x2(i)=0;
     end
 end
 %Apeikonish tou prwtou simatos {x[n]}
subplot(2,1,2)
stem(n,x2,'filled');
ylim([-5 2]);
title('{x[n-2]}');
xlabel('n');
ylabel('x[n-2]');

%--------------------------------------------------------------------------

%b)
n=[1:20];
x=randperm(length(n));
max=x(1);
for i=1:20
 if x(i)>max
 max=x(i);
 end
end

min=x(1);
for i=1:20
 if x(i)<min
 min=x(i);
 end
end

figure(2)
subplot(2,2,1);
stem(n,x,'filled');
title('{ x[n] }');
xlabel('n');
ylabel('x[n]');
ylim([min max]);
xlim([-length(n)-1 length(n)+1])


subplot(2,2,2);
stem(-n,x,'filled');
title('{ x[-n] }');
xlabel('n');
ylabel('x[-n]');
ylim([min max]);
xlim([-length(n)-1 length(n)+1])


subplot(2,2,3);
stem(2*n,x,'filled');
title('{ x[2n] }');
xlabel('n');
ylabel('x[2n]');
ylim([min max]);
xlim([-length(n)-1 2*length(n)+1])


subplot(2,2,4);
stem(3*n,x,'filled');
title('{x[3n]}');
xlabel('n');
ylabel('x[3n]');
ylim([min max]);
xlim([-length(n)-1 3*length(n)+1])