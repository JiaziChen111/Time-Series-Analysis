% Minimizes a multi-variable function with constraints on theire bounds.
% in this case we bound alpha to [0,1] and F1 to [-Inf,+Inf].
function [x,fval]=minMapeArg(x0,fun)
lecture;
A=[];b=[];
Aeq=[];Beq=[];
lb=[0;-Inf];ub=[1;Inf];
[x,fval]=fmincon(fun,x0,A,b,Aeq,Beq,lb,ub);
end















