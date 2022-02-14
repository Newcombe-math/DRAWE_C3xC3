function [check] = planar_given_crossings(elorig,cidx1,clab1)

N=max(max(elorig));
M=size(elorig,1);
planvlabels=zeros(cidx1(M+1),1);
elistorig=zeros(M+cidx1(M+1),1);
eidxorig=[0;(1:M)']+cidx1;
elistorig(eidxorig(1:M)+1)=1:M;
el1=[elorig;zeros(cidx1(end),2)];
for i=1:M
    if cidx1(i+1)-cidx1(i)~=0
        tt=el1(i,2);
    end
    for j=1:cidx1(i+1)-cidx1(i)
        M=M+1;
        elistorig(eidxorig(i)+j+1)=M;
        if planvlabels(cidx1(i)+j)==0
            N=N+1;
            planvlabels(cidx1(i)+j)=N;
            ce=clab1(cidx1(i)+j);
            f1=find(clab1(cidx1(ce)+1:cidx1(ce+1))==i);
            planvlabels(cidx1(ce)+f1)=N;
        end
    end
    if cidx1(i+1)-cidx1(i)>0
        el1(M,1:2)=[tt,planvlabels(cidx1(i+1))];
        el1(i,2)=planvlabels(cidx1(i)+1);
    end
    for j=1:cidx1(i+1)-cidx1(i)-1
        if planvlabels(cidx1(i)+j)<planvlabels(cidx1(i)+j+1)
            el1(elistorig(eidxorig(i)+j+1),1)=planvlabels(cidx1(i)+j);
            el1(elistorig(eidxorig(i)+j+1),2)=planvlabels(cidx1(i)+j+1);
        else
            el1(elistorig(eidxorig(i)+j+1),1)=planvlabels(cidx1(i)+j+1);
            el1(elistorig(eidxorig(i)+j+1),2)=planvlabels(cidx1(i)+j);
        end
    end
end

%For any public use, this function should be modified to your planar graph
%checker. The one below is from MatlabBGL, available online and written by David Gleich.
check=is_planar(sparse(el_to_adj(el1)));
end