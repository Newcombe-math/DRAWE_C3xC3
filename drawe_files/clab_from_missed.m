function [clab, cidx]=clab_from_missed(el,missed)

M=size(el,1);
clab=[];
cidx=zeros(M+1,1);
for i=1:M
    
    for j=1:M
        if j~=i
            chk2=1;
            if el(i,1)==el(j,1) || el(i,1)==el(j,2) || el(i,2)==el(j,1) || el(i,2)==el(j,2)
                chk2=0;
            end
            if chk2==1
            
                chk=1;
                q1=find(missed(:,1)==i);
                for k=1:numel(q1)
                    if missed(q1(k),2)==j
                        chk=0;
                        break
                    end
                end
                q1=find(missed(:,2)==i);
                for k=1:numel(q1)
                    if missed(q1(k),1)==j
                        chk=0;
                        break
                    end
                end
                if chk==1
                    clab=[clab;j];
                end
            end
        end
    end
    cidx(i+1)=numel(clab);
    
end
end
        