function probab=rollunfairdice(unprob,n)
le=length(unprob);
len=length(n);
counter=zeros(1,le);
probab=zeros(le,len);
for i=1:len
    p=rand(1,n(i));
    c=1;
    for j=1:n(i)
        clogic=conditions(unprob,c,p(j),le);
        if clogic>0
            counter( clogic)=counter( clogic)+1;
        end
    end
    for w=1:6
    probab(w,i)=counter(w)/n(i);
    end
end
%cumsum
end