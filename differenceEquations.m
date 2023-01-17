function x=differenceEquations(coeficients,initialvalues,n)
%m=size(initialvalues)
x(:,1)=initialvalues;

for i=2:n
    
    x(:,i)=coeficients*x(:,i-1);
end
end