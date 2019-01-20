function  dq = dqblend(dq_list,weights)
% Input: 
% dq_list : 8*N
% weights : 1*N 

% Out:   8*1
weights = weights / sum(weights); 
c = zeros(8,1);
for i =1:size(dq_list,2) 
    c = c + weights(i)*dq_list(:,i); %  
end 
% 
c0 = c(1:4) ;
c1 = c(5:8);
c_norm = norm(c0); 
c0 = c0 / c_norm ; 
c1 = c1 / c_norm ; 
dq = [c0; c1];