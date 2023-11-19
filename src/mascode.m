%p=input('enter the probability')
sim('node');
rows=size(C_h,1);
cols=size(C_h,2);
for i=1:60:rows
for j=1:1:cols
if(C_h(i,5)<=C_h(i,j))
v(i,j)=0;

else
    v(i,j)=C_h(i,j);
end
end
end
[A,I]=sort(v,2);

for i=1:60:rows
for j=1:1:cols
    if A(i,j)>0
        x(i,1)=I(i,j);
        break;
    end
end
end
y(1,1)=0;
y(2,1)=0;
y(3,1)=0;
y(4,1)=0;
y(5,1)=0;
for i=1:60:rows
    if x(i,1)==1
        y(1,1)=y(1,1)+1;
    elseif x(i,1)==2
        y(2,1)=y(2,1)+1;
        elseif x(i,1)==3
        y(3,1)=y(3,1)+1;
        elseif x(i,1)==4
        y(4,1)=y(4,1)+1;
    end
end
 data1(1,:)=[0,920,940,960,980,20,40,60];
% leachenergy(1,1)=y(1,1)*Energy(1,1);
%  leachenergy(1,2)=y(2,1)*Energy(1,2);
%  leachenergy(1,3)=y(3,1)*Energy(1,3);
%  leachenergy(1,4)=y(4,1)*Energy(1,4);
% leachenergy(1,1)=leachenergy(1,1)+(y(2,1)*Energy(1,5))+(y(3,1)*Energy(1,6))+(y(4,1)*Energy(1,7));
% leachenergy(1,2)=leachenergy(1,2)+(y(1,1)*Energy(1,5))+(y(3,1)*Energy(1,5))+(y(4,1)*Energy(1,6));
% leachenergy(1,3)=leachenergy(1,3)+(y(1,1)*Energy(1,6))+(y(2,1)*Energy(1,5))+(y(4,1)*Energy(1,5));
% leachenergy(1,4)=leachenergy(1,4)+(y(1,1)*Energy(1,7))+(y(2,1)*Energy(1,6))+(y(3,1)*Energy(1,5));

sim('getenergyleach');
mascodecontinuation;
        
    
    
    
    
    
    
    
    
    


  
  
