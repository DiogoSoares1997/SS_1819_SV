n=-10:10
u=zeros(1,length(n))
v=u
u(find(n==0):find(n==5))=1
v=fliplr(u)
figure; subplot(2,1,1); stem(n,u); subplot(2,1,2); stem(n,v);