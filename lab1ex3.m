%% ASKHSH 3
%% Erwthma a)
clear all;
close all;
clc;


n1=1:30;
y=rand(50*n1);
n2=1:50;
x=rand(30*n2);
n=30+50-1;
%synelixi me tn mathimatikh synarthsh
for i=1:n,
    sum=0;
    for k=1:50,
        if or((i-k)<0,(i-k)>29)
        temp=0;
        else
        temp=y(i-k+1);
        end
    sum=sum+x(k)*temp;
    end
h(i)=sum;
end

n3=1:n;
figure(1);
stem(n3,h);
pause;


%epivevaiosi synelixis me thn etoimh synarthsh ths matlab conv
h2=conv(x,y);
figure(2);
stem(n3,h2);
pause;