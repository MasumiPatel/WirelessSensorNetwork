No_Users = 4; 
s = 200; alpha = 1.5; 
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
figure, plot(X', Y')
[c,k]=sort(D_base);
e=1000*((50e-9+(100e-12)*c(1,1)*c(1,1)));
Eused=zeros(No_Users,s);
Erem=zeros(No_Users,s);
XF=zeros(No_Users,s);
Erem(1,1)=10-e;
d_mean=sum(D_base,1)/No_Users;
for i=2:1:4
    Erem(i,1)=10;
end
for i=1:1:s-1
%i=1;
    for j=1:1:No_Users
        XF(j,i)=(Erem(j,i)/(d_mean(1,i)*d_mean(1,i)));
       % [xfac,ind]=sort(XF,'descend');
        if(j==4)
           [xfac,ind]=sort(XF,'descend');
           Erem(ind(1,i),i+1)=Erem(ind(1,i),i)-(1000*(50e-9+(100e-12*D_base(ind(1,i),i+1)*D_base(ind(1,i),i+1))));
           for z=1:1:No_Users
             if(z==ind(1,i))
                 continue
             else
              Erem(z,i+1)=Erem(z,i);
             end   
           end
        end 
    end
end
No_oftimes(1,1)=0;
No_oftimes(2,1)=0;
No_oftimes(3,1)=0;
No_oftimes(4,1)=0;
for i=1:1:s-1
    if ind(1,i)==1
        No_oftimes(1,1)=No_oftimes(1,1)+1;
    elseif ind(1,i)==2
        No_oftimes(2,1)=No_oftimes(2,1)+1;
        elseif ind(1,i)==3
        No_oftimes(3,1)=No_oftimes(3,1)+1;
        elseif ind(1,i)==4
        No_oftimes(4,1)=No_oftimes(4,1)+1;
    end
end
        
        
    

