function area=montecarrlo(lb,ub,f)
n=[100,200,300,400,500,600,700,800,900,1000];
len=length(n);
counter=0;
area=zeros(1,len);
for i=1:len
    x=(ub-lb)*rand(1,n(i))+lb;
    y=(f(ub)-f(lb))*rand(1,n(i))+f(lb);
    for j=1:n(i)
        if y(j)<f(x(j))
            counter=counter+1;
        end            
    end
    area(i)=(ub-lb)*(f(ub)-f(lb))*counter;
        
end
end