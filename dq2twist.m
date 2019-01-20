function  twist = dq2twist(dq)
% rotes = twist(1:3); 
% trans = twist(4:6) /2; 
twist =zeros(6,1);

theta = 2*acos(dq(1));

twist(1:3) = dq(2:4)/sin(theta/2)* theta ;

r  = dq(1:4); 
dq = dq(5:8);

% aa = dq

twist(4)= -dq(1)* r(2) + dq(2)* r(1) - dq(3)* r(4) + dq(4)*r(3);
twist(5)= -dq(1)* r(3) + dq(2)* r(4) + dq(3)* r(1) - dq(4)*r(2);
twist(6)= -dq(1)* r(4) - dq(2)* r(3) + dq(3)* r(2) + dq(4)*r(1) ;
twist(4:6) = twist(4:6) * 2 ;
