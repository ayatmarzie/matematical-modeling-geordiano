function [averagepoints,name]=dart(runnum,dartnum,points,unfairprobability,situations)
names={'Bullseye','Yellow','Blue','Red','White'};
counter=zeros(1,situations);%5 is number of conditions
sumation=0;
for i=1:runnum
    p=rand(1,dartnum);
    c=1;
    for j=1:dartnum
        clogic=conditions(unfairprobability,c,p(j),dartnum);
        if clogic>0
            counter( clogic)=counter( clogic)+1;
        end
    end
   
     sumation=sumation+sum(points.*counter);
    
end
averagepoints=sumation/runnum;
[maxvalue,maxindex]=max(points.*unfairprobability);
name=names(maxindex);
end