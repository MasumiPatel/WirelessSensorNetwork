node1energy=0; node2energy=0; node3energy=0; node4energy=0;

node1energy=sum(Energy1);    
node2energy=sum(Energy2);
node3energy=sum(Energy3);
node4energy=sum(Energy4);
for i=1:1:s
    if(j(1,i)==1)
        node2energy=node2energy+(1000*((50*10e-9)+(100*10e-12*d(1,i,2)*d(1,i,2))));
        node3energy=node3energy+(1000*((50*10e-9)+(100*10e-12*d(1,i,3)*d(1,i,3))));
        node4energy=node4energy+(1000*((50*10e-9)+(100*10e-12*d(1,i,4)*d(1,i,4))));
    end
     if(j(1,i)==2)
        node1energy=node1energy+(1000*((50*10e-9)+(100*10e-12*d(2,i,1)*d(2,i,1))));
        node3energy=node3energy+(1000*((50*10e-9)+(100*10e-12*d(2,i,3)*d(2,i,3))));
        node4energy=node4energy+(1000*((50*10e-9)+(100*10e-12*d(2,i,4)*d(2,i,4))));
     end
     if(j(1,i)==3)
        node1energy=node1energy+(1000*((50*10e-9)+(100*10e-12*d(3,i,1)*d(3,i,1))));
        node2energy=node2energy+(1000*((50*10e-9)+(100*10e-12*d(3,i,2)*d(3,i,2))));
        node4energy=node4energy+(1000*((50*10e-9)+(100*10e-12*d(3,i,4)*d(3,i,4))));
     end
     if(j(1,i)==4)
        node1energy=node1energy+(1000*((50*10e-9)+(100*10e-12*d(4,i,1)*d(4,i,1))));
        node3energy=node3energy+(1000*((50*10e-9)+(100*10e-12*d(4,i,3)*d(4,i,3))));
        node2energy=node2energy+(1000*((50*10e-9)+(100*10e-12*d(4,i,2)*d(4,i,2))));
     end
end
nodeEnergy(1,:)=node1energy;
nodeEnergy(2,:)=node2energy;
nodeEnergy(3,:)=node3energy;
nodeEnergy(4,:)=node4energy;