function [a,b]=markovechain(coa,cob,n)
a=ones(1,n);
b=ones(1,n);
a(1)=coa(1);
b(1)=cob(1);
for i=2:n
    a(i)=coa(1)*a(i-1)+cob(1)*b(i-1);
    b(i)=coa(2)*a(i-1)+cob(2)*b(i-1);
end
end