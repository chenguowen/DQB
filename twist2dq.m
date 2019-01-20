function dq = twist2dq(twist)
rotes = twist(1:3); 
trans = twist(4:6)/2; 

theta = norm(rotes) ; %
rotes = rotes/theta ; %

dq0 = [cos(theta/2);sin(theta/2)*rotes];
dq1 = zeros(4,1); 

dq1(1) = -dq0(2)* trans(1) - dq0(3)* trans(2) - dq0(4)* trans(3);
dq1(2) =  dq0(1)* trans(1) - dq0(3)* trans(3) + dq0(4)* trans(2);
dq1(3) =  dq0(1)* trans(2) - dq0(4)* trans(1) + dq0(2)* trans(3);
dq1(4) =  dq0(1)* trans(3) + dq0(3)* trans(1) - dq0(2)* trans(2);

dq = [dq0;dq1]; 

