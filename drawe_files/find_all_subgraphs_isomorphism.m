function [G, Gidx] = find_all_subgraphs_isomorphism(el,n,m,el2)
%find all subgraphs on n vertices and m edges which are isomorphic to the
%graph given in el2.
M=size(el,1);
N=max(max(el));
z1=combntns(1:N,n);
z2=combntns(1:M,m);
A2=zeros(n);
for i=1:size(el2,1)
    A2(el2(i,1),el2(i,2))=1;
    A2(el2(i,2),el2(i,1))=1;
end
q1=size(z1,1);
q2=size(z2,1);
Gidx=[];
G=[];
gcnt=0;
for i=1:q1
    currvert=z1(i,:);
    currvs=numel(currvert);
    for j=1:q2
        accept=1;
        curre=z2(j,:);
        for k=curre
           if numel(setdiff(currvert,el(k,1)))==currvs || numel(setdiff(currvert,el(k,2)))==currvs
               accept=0;
               break
           end
        end
        if accept==1
           A=zeros(N);
           for i2=1:m
              A(el(curre(i2),1), el(curre(i2),2))=1;
              A(el(curre(i2),2), el(curre(i2),1))=1; 
           end
           dele=[];
           for i2=1:N
               if(sum(A(i2,:))==0)
                  dele=[dele;i2]; 
               end
           end
           A(dele,:)=[];
           A(:,dele)=[];
           isom=graphisomorphism(sparse(A),sparse(A2));
           if(isom==1)
               gcnt=gcnt+1;
               Gidx(gcnt,1)=numel(curre);
               G(gcnt,1:numel(curre))=curre;
           end
        end
    end
end





end