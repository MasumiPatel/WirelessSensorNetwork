%clc;clear;
No_Users = 4; 
s=input('Enter no of steps');
%s = 200;
alpha = 1.5; 
base = [500, 500];   
X = zeros(No_Users, s);  
Y = zeros(No_Users, s);  
d = zeros(No_Users, s, No_Users);   
for node =  1: No_Users 
    [X(node, :), Y(node, :)] = levywalkfunc(alpha, s); %levy walk function generation 
end 

for node  = 1:No_Users %chu
    d(:, :, node) = sqrt((X(node, :) - X).^2 + ... 
        (Y(node, :) - Y).^2); %distance between  each node with every node at every step
end 
D_base = sqrt((X - base(1,1)).^2 + ... 
    (Y - base(1,2)).^2); %euclidean distance between nodes and base station
n1=D_base(1,:);
n2=D_base(2,:);
n3=D_base(3,:);
n4=D_base(4,:);
figure, plot(X', Y')
legend("Node 1","Node 2","Node 3","Node 4")
sim('mobile_wt');
distancefunc2;
sim('moblienode_energy');
distancefunc3;
% p(1,:)=a1(1,:);
% p(2,:)=a2(1,:);
% p(3,:)=a3(1,:);
% p(4,:)=a4(1,:);
% [b,i]=sort(p);
% [c,j]=sort(D_base);
% dis(1,:)=j(1,:);%dis is 2 rows (1)node(2)distance
% dis(2,:)=c(2,:);
% j=2;
% k=2;
% l=2;
% m=2;
% for i=1:1:s
%       if(dis(1,i)==1)
%           data(1,j)=dis(2,i);
%          data1(1,j)=dis(2,i); %data is node distances
%           j=j+1; 
%       end
%       if(dis(1,i)==2)
%           data(2,k)=dis(2,i);
%           data2(1,k)=dis(2,i);
%           k=k+1; 
%       end
%       if(dis(1,i)==3)
%          data(3,l)=dis(2,i);
%          data3(1,l)=dis(2,i);
%           l=l+1; 
%       end
%       if(dis(1,i)==4)
%           data(4,m)=dis(2,i);
%           data4(1,m)=dis(2,i);
%           m=m+1; 
%       end
% end
% 
% 
% node1energy=0; node2energy=0; node3energy=0; node4energy=0;
% 
% node1energy=sum(Energy1);    
% node2energy=sum(Energy2);
% node3energy=sum(Energy3);
% node4energy=sum(Energy4);



