function [HARTIME,MAXHAR,WAITIME,MAXWAIT,IDLETIME]=HarborSimulation(n)
arrive=135*rand(1,n)+15;
unloud=45*rand(1,n)+45;

HARTIME=unloud(1);
MAXHAR=unloud(1);
WAITIME=0;
MAXWAIT=0;
IDLETIME=arrive(1);
finish=arrive(1)+unload(1);
for i=2:n
    arrive(i)=arrive(i-1)+between(i);
    timediff=arrive(1)-finish;
    if timediff>=0
        idle=timediff;
        wait=0;
    else
        wait=-timediff;
        idle=0;
    end
    start=arrive(i)+wait;
    finish=start+unload(i);
    harbor=wait+unload(i);
    HARTIME=HARTIME+harbor;
    if harbor>MAXHAR
        MAXHAR=harbor;
    end
    WAITIME=WAITIME+wait;
    IDLETIME=IDLETIME+idle;
    if wait>MAXWAIT 
        MAXWAIT=wait;
    end
end
HARTIME=HARTIME/n;
MAXWAIT=MAXWAIT/n;
IDLETIME=IDLETIME/finish;
    
end