function [possible2,possiblenum2] = subgraph_check_drawe(el,possible,possiblenum,impossible_subgraphs)
    possible2=[];
    possiblenum2=0;
    Gcidx=[];
    Gclab=[];
    isomcnt=0;
    for n=1:possiblenum
        i1=impossible_subgraphs{n};
        [clab, cidx]=clab_from_missed(el,possible{n});
        newclab=[];
        newcidx=zeros(size(el,1)+1,1);
        for j=1:size(el,1)
            f2=find(i1==j);
            ctemp=[];
            if numel(f2)>0
                for k=cidx(j)+1:cidx(j+1)
                    f1=find(i1==clab(k));
                    if numel(f1)>0
                        ctemp=[ctemp;clab(k)];
                    end
                end
            end
            newclab=[newclab;ctemp];
            newcidx(j+1)=numel(newclab);
        end
        map=(1:size(el,1))';
        diff=setdiff(map,i1);
        map(diff)=[];
        newM=numel(map);
        newel=el;
        newel(diff,:)=[];
        new2cidx=zeros(newM+1,1);
        new2clab=[];
        for j=1:newM
            ctemp=[];
            olde=map(j);
            for k=cidx(olde)+1:cidx(olde+1)
                f1=find(map==clab(k));
                ctemp=[ctemp;f1];
            end
            new2clab=[new2clab;ctemp];
            new2cidx(j+1,1)=numel(new2clab);
    
        end
        num2=1;
        for j=1:newM
            num1=new2cidx(j+1)-new2cidx(j);
            if num1>0
                num2=num2*factorial(num1);
            end
        end
        fprintf([num2str(n),'  goodnum2:    ',num2str(num2),'\n']);
        [check, newCt, Cidx,Gcidx,Gclab,isomcnt]=feval(['drawe_',num2str(newM)],newel,new2clab,new2cidx,Gcidx,Gclab,isomcnt);
        if check==0
            fprintf([num2str(n),'  drawe completed with 0 output after ',num2str(num2),' planarity checks\n']);
        else
            fprintf([num2str(n),'  drawe completed with 1 output, there is a problem.\n']);
            pause
        end
    end
    fprintf(['verification completed successfully (all 0 outputs from drawe).\n']);

end
