
leachenergy(1,1)=y(1,1)*Energy(1,1);
leachenergy(1,2)=y(2,1)*Energy(1,2);
leachenergy(1,3)=y(3,1)*Energy(1,3);
leachenergy(1,4)=y(4,1)*Energy(1,4);
leachenergy(1,1)=leachenergy(1,1)+(y(2,1)*Energy(1,5))+(y(3,1)*Energy(1,6))+(y(4,1)*Energy(1,7));
leachenergy(1,2)=leachenergy(1,2)+(y(1,1)*Energy(1,5))+(y(3,1)*Energy(1,5))+(y(4,1)*Energy(1,6));
leachenergy(1,3)=leachenergy(1,3)+(y(1,1)*Energy(1,6))+(y(2,1)*Energy(1,5))+(y(4,1)*Energy(1,5));
leachenergy(1,4)=leachenergy(1,4)+(y(1,1)*Energy(1,7))+(y(2,1)*Energy(1,6))+(y(3,1)*Energy(1,5));
Eremaining=2-leachenergy;