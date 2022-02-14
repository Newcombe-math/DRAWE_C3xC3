function [G, Gidx] = find_all_subgraphs(el,n,m)
%find all subgraphs on n vertices and m edges
M=size(el,1);
N=max(max(el));
z1=combntns(1:N,n);
z2=combntns(1:M,m);

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
           gcnt=gcnt+1;
           Gidx(gcnt,1)=numel(curre);
           G(gcnt,1:numel(curre))=curre;
        end
    end
end





end
