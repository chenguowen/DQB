clc 
% dq=rand(8,1); 
twist = rand(6,1); 
dq2=twist2dq(twist);%

twist2 = dq2twist(dq2);%  
dq=twist2dq(twist2);%

% twist2 = rand(6,1); 

% dq = dq/norm(dq(1:4)); 
a = [dq , dq2];
a = [twist , twist2]

twist1 = rand(6,1);
twist2 = rand(6,1);

dqlist =  [twist2dq(twist1), twist2dq(twist2)] ; 
weights = [0.5 ,0.5];
dq1 = dqblend(dqlist,weights) ; %

twist = dq2twist(dq1);%  
dq2=twist2dq(twist); 
disp(['dual quanterion = '])
disp( num2str([dq1,dq2])  );
