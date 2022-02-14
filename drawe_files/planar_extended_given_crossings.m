function [check,elp] = planar_extended_given_crossings(elorig,cidx1,clab1)

N=max(max(elorig));
Ndel1=N;
M=size(elorig,1);
planvlabels=zeros(cidx1(M+1),1);
elistorig=zeros(M+cidx1(M+1),1);
eidxorig=[0;(1:M)']+cidx1;
elistorig(eidxorig(1:M)+1)=1:M;
origedgelabel=[(1:M)';zeros(cidx1(end),1)];
el1=[elorig;zeros(cidx1(end),2)];
for i=1:M
    if cidx1(i+1)-cidx1(i)~=0
        tt=el1(i,2);
    end
    for j=1:cidx1(i+1)-cidx1(i)
        M=M+1;
        elistorig(eidxorig(i)+j+1)=M;
        origedgelabel(M)=i;
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
Nnew=N;
A=el_to_adj(el1);
newvert=zeros(M,1);
for i=Ndel1+1:N
    currN=Nnew;
    [x y]=find(el1==i);
    tt=elistorig(eidxorig(origedgelabel(x(1)))+1:eidxorig(origedgelabel(x(1))+1));
    for j=2:4
        f1=find(tt==x(j));
        if numel(f1)==1
           ori=j; 
           break
        end
    end
    A=blkdiag(A,zeros(4));
    for j=1:4
        Nnew=Nnew+1;
        A(i,Nnew)=1;
        A(Nnew,i)=1;
        if newvert(x(j))>0
            A(newvert(x(j)),Nnew)=1;
            A(Nnew,newvert(x(j)))=1;
            A(newvert(x(j)),i)=0;
            A(i,newvert(x(j)))=0;
        else
            newvert(x(j))=Nnew;
            A(el1(x(j),1),el1(x(j),2))=0;
            A(el1(x(j),2),el1(x(j),1))=0;
            if el1(x(j),1)==i
                A(el1(x(j),2),Nnew)=1;
                A(Nnew,el1(x(j),2))=1;
            else
                A(el1(x(j),1),Nnew)=1;
                A(Nnew,el1(x(j),1))=1;
            end
        end
    end
    if ori==2
        A(currN+1,currN+3)=1;
        A(currN+3,currN+1)=1;
        A(currN+2,currN+3)=1;
        A(currN+3,currN+2)=1;
        A(currN+2,currN+4)=1;
        A(currN+4,currN+2)=1;
        A(currN+1,currN+4)=1;
        A(currN+4,currN+1)=1;
    end
    if ori==3
        A(currN+1,currN+2)=1;
        A(currN+2,currN+1)=1;
        A(currN+2,currN+3)=1;
        A(currN+3,currN+2)=1;
        A(currN+3,currN+4)=1;
        A(currN+4,currN+3)=1;
        A(currN+1,currN+4)=1;
        A(currN+4,currN+1)=1;
    end
    if ori==4
        A(currN+1,currN+2)=1;
        A(currN+2,currN+1)=1;
        A(currN+2,currN+4)=1;
        A(currN+4,currN+2)=1;
        A(currN+3,currN+4)=1;
        A(currN+4,currN+3)=1;
        A(currN+1,currN+3)=1;
        A(currN+3,currN+1)=1;
    end
end

%For any public use, this function should be modified to your planar graph
%checker. The one below is from MatlabBGL, available online and written by David Gleich.
check=is_planar(sparse(A));
elp=adj_to_el(A);
end

