function counter= conditions(unprob,c,p,limit)
if limit<c
    counter=0;
elseif p<unprob(c)
    counter=c;
else
    counter=conditions(unprob,c+1,p,limit);
end

    
end