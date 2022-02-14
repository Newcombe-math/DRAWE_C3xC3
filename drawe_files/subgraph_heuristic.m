function [possible2,possiblenum2,impossible_subgraphs] = subgraph_heuristic(el,possible,possiblenum,impossible_subgraphs)
    possible2=[];
    possiblenum2=0;
    Gcidx=[];
    Gclab=[];
    isomcnt=0;
    for n=1:possiblenum
%         if(numel(impossible_subgraphs{n})>0)
%             continue
%         end
        for v=6:-1:6
             for e=3:v*(v-1)/2
                [G2, ~] = find_all_subgraphs(el,v,e);
                fprintf(['subgraphs:  ',num2str(v),'    ',num2str(e),'    ',num2str(size(G2,1)),'\n']);
                % for n=[4,13,17,18,32,55]
                
                for i=1:size(G2,1)
%                     plancheck1=0;
                    i1=G2(i,:);
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
                    if num2<100000000
                        fprintf([num2str(n),'  goodnum2:    ',num2str(num2),' at i:  ',num2str(i),'\n']);
                        [check, newCt, Cidx,Gcidx,Gclab,isomcnt]=feval(['drawe_',num2str(newM)],newel,new2clab,new2cidx,Gcidx,Gclab,isomcnt);
                        %     [check, newCt, Cidx,Gcidx,Gclab,isomcnt]=check_drawing7b(newel,new2clab,new2cidx,Gcidx,Gclab,isomcnt);
                    else
                        fprintf(['badnum2:    ',num2str(num2),' at i:  ',num2str(i),'\n']);
                    end
                    if check==0
                        %then save this subgraph which cannot be drawn
                        impossible_subgraphs{n,1}=i1;
                        save('sghoutput.mat','impossible_subgraphs','-append');
                        break
                    end
                end
                if check==0
                    break
                end
            end
            if check==0
                break
            end
        end
        if check==1
            possible2=[possible2;possible{n}];
            possiblenum2=possiblenum2+1;
        end
    end

end