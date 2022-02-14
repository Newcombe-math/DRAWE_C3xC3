function [possible,possiblenum] = envelope_check_4_missed_pairs(el,A,Aid,zaid,A2,A2id,za2id)

z=combntns(1:9,2);
zn=size(z,1);

del=[];
for i=1:zn
    check=1;
    if el(z(i,1),1)~=el(z(i,2),1) && el(z(i,1),1)~=el(z(i,2),2) && el(z(i,1),2)~=el(z(i,2),1) && el(z(i,1),2)~=el(z(i,2),2)
        check=0;
    end
    if check==1
        del=[del;i];
    end
end
z(del,:)=[];
zn=size(z,1);

totcnt=0;
possible=[];
possiblenum=0;
for zr=1:zn
    a=z(zr,1);
    b=z(zr,2);
    for rr=zr+1:zn
        c=z(rr,1);
        d=z(rr,2);
        for rrr=rr+1:zn
            e=z(rrr,1);
            f=z(rrr,2);
            for rrrr=rrr+1:zn
                g=z(rrrr,1);
                h=z(rrrr,2);
                check=0;
                totcnt=totcnt+1;
                %4-cycles    
                if (a==3 && b==6) || (c==3 && d==6) || (e==3 && f==6) || (g==3 && h==6)
                    check=1;
                end
                if (a==2 && b==8) || (c==2 && d==8) || (e==2 && f==8) || (g==2 && h==8)
                    check=1;
                end
                if check==0
                    continue
                end
                check=0;
                if (a==3 && b==5) || (c==3 && d==5) || (e==3 && f==5) || (g==3 && h==5)
                    check=1;
                end
                if (a==1 && b==7) || (c==1 && d==7) || (e==1 && f==7) || (g==1 && h==7)
                    check=1;
                end
                if check==0
                    continue
                end
                check=0;
                if (a==5 && b==6) || (c==5 && d==6) || (e==5 && f==6) || (g==5 && h==6)
                    check=1;
                end
                if (a==4 && b==9) || (c==4 && d==9) || (e==4 && f==9) || (g==4 && h==9)
                    check=1;
                end
                if check==0
                    continue
                end
                %pairs of triags have odd missed crossings
                trigcnt=0;
                if ((a==1 || a==2 || a==4) && (b==7 || b==8 || b==9))
                    trigcnt=trigcnt+1;
                end
                if ((c==1 || c==2 || c==4) && (d==7 || d==8 || d==9))
                    trigcnt=trigcnt+1;
                end
                if ((e==1 || e==2 || e==4) && (f==7 || f==8 || f==9))
                    trigcnt=trigcnt+1;
                end
                if ((g==1 || g==2 || g==4) && (h==7 || h==8 || h==9))
                    trigcnt=trigcnt+1;
                end
                if mod(trigcnt,2)==0
                    continue
                end
                
%                 %6-cycle with triangle edge
                checkbad=0;
                for qq=1:zaid
                    check=0;
                        if numel(setdiff(A(qq,1:Aid(qq)),a))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),b))~=Aid(qq)
                            check=1;
                            continue
                        end
                        if numel(setdiff(A(qq,1:Aid(qq)),c))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),d))~=Aid(qq)
                            check=1;
                            continue
                        end
                        if numel(setdiff(A(qq,1:Aid(qq)),e))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),f))~=Aid(qq)
                            check=1;
                            continue
                        end
                        if numel(setdiff(A(qq,1:Aid(qq)),g))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),h))~=Aid(qq)
                            check=1;
                            continue
                        end
                        if check==0
                            checkbad=1;
                            break
                        end
                end
                if checkbad==1
                    continue
                end
%                 
%               %6-cycle 2 triags
                checkbad=0;
                for qq=1:za2id
                    a2cnt=0;
                        if numel(setdiff(A2(qq,1:A2id(qq)),a))~=A2id(qq) && numel(setdiff(A2(qq,1:A2id(qq)),b))~=Aid(qq)
                            a2cnt=a2cnt+1;
                        end
                        if numel(setdiff(A2(qq,1:A2id(qq)),c))~=A2id(qq) && numel(setdiff(A2(qq,1:A2id(qq)),d))~=Aid(qq)
                            a2cnt=a2cnt+1;
                        end
                        if numel(setdiff(A2(qq,1:A2id(qq)),e))~=A2id(qq) && numel(setdiff(A2(qq,1:A2id(qq)),f))~=Aid(qq)
                            a2cnt=a2cnt+1;
                        end
                        if numel(setdiff(A2(qq,1:A2id(qq)),g))~=A2id(qq) && numel(setdiff(A2(qq,1:A2id(qq)),h))~=Aid(qq)
                            a2cnt=a2cnt+1;
                        end
                        if a2cnt<2
                            checkbad=1;
                            break
                        end
                end
                if checkbad==1
                    continue
                end
                
                
                    possiblenum=possiblenum+1;
                    possible{possiblenum,1}=[a,b;c,d;e,f;g,h];
%                 end
            end
        end
    end
end

end