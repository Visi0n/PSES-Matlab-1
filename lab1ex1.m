
% n=-4:6;
% x=zeros(1,length(n));
% 
%  for i=1:length(n)
%      if(n(i)==0||n(i)==1)
%          x(i)=-2;
%      elseif(n(i)==-2||n(i)==-1||n(i)==2||n(i)==3)
%          x(i)=1;
%      else
%          x(i)=0;
%      end
%  end
% 
% figure(1);
% stem(n,x)
% ylim([-2 2]);  
n=[1:5];
x=zeros(1,5)
max =2;
for i=1:5
    x(i)=input('Give the value of x:');
    if (max < x(i))
        max = x(i);
    end

end
max = max +2;
figure(1)
stem(n,x);
xlim([-10 10])
ylim([-max max]);

figure(2)
stem(-n,x);
ylim([-max max]);
xlim([-10 10]);

figure(3)
stem(2*n,x);
ylim([-max max]);
xlim([-10 10]);

figure(4)
stem(3*n,x);
ylim([-max max]);
xlim([-10 10]);
