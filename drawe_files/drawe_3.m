function [check, newCt, Cidx,Gcidx,Gclab,isomcnt]=check_drawing7b_3(el,Clabel,Cidx,Gcidx,Gclab,isomcnt)
check=0;
chk2np=0;
% Clabel
if Cidx(2)~=Cidx(1)
    a1=perms(Clabel(Cidx(1)+1:Cidx(2)));
else
    a1=0;
end
if Cidx(3)~=Cidx(2)
    b1=perms(Clabel(Cidx(2)+1:Cidx(3)));
else
    b1=0;
end
if Cidx(4)~=Cidx(3)
    c1=perms(Clabel(Cidx(3)+1:Cidx(4)));
else
    c1=0;
end
% if Cidx(5)~=Cidx(4)
%     d1=perms(Clabel(Cidx(4)+1:Cidx(5)));
% else
%     d1=0;
% end
% if Cidx(6)~=Cidx(5)
%     e1=perms(Clabel(Cidx(5)+1:Cidx(6)));
% else
%     e1=0;
% end
% if Cidx(7)~=Cidx(6)
%     f1=perms(Clabel(Cidx(6)+1:Cidx(7)));
% else
%     f1=0;
% end
% if Cidx(8)~=Cidx(7)
%     g1=perms(Clabel(Cidx(7)+1:Cidx(8)));
% else
%     g1=0;
% end
% if Cidx(9)~=Cidx(8)
%     h1=perms(Clabel(Cidx(8)+1:Cidx(9)));
% else
%     h1=0;
% end
% if Cidx(10)~=Cidx(9)
%     i1=perms(Clabel(Cidx(9)+1:Cidx(10)));
% else
%     i1=0;
% end
% if Cidx(11)~=Cidx(10)
%     j1=perms(Clabel(Cidx(10)+1:Cidx(11)));
% else
%     j1=0;
% end
% if Cidx(12)~=Cidx(11)
%     k1=perms(Clabel(Cidx(11)+1:Cidx(12)));
% else
%     k1=0;
% end
% if Cidx(13)~=Cidx(12)
%     l1=perms(Clabel(Cidx(12)+1:Cidx(13)));
% else
%     l1=0;
% end
% if Cidx(14)~=Cidx(13)
%     m1=perms(Clabel(Cidx(13)+1:Cidx(14)));
% else
%     m1=0;
% end
% if Cidx(15)~=Cidx(14)
%     n1=perms(Clabel(Cidx(14)+1:Cidx(15)));
% else
%     n1=0;
% end
% if Cidx(16)~=Cidx(15)
%     o1=perms(Clabel(Cidx(15)+1:Cidx(16)));
% else
%     o1=0;
% end

a2=size(a1,1);
b2=size(b1,1);
c2=size(c1,1);
% d2=size(d1,1);
% e2=size(e1,1);
% f2=size(f1,1);
% g2=size(g1,1);
% h2=size(h1,1);
% i2=size(i1,1);
% j2=size(j1,1);
% k2=size(k1,1);
% l2=size(l1,1);
% m2=size(m1,1);
% n2=size(n1,1);
% o2=size(o1,1);
chkcnt=0;
% a2
% b2
% c2
% d2
% e2
% f2
% g2
% h2
% i2
% pause

for a=1:a2
    for b=1:b2
        for c=1:c2
%             for d=1:d2
%                 for e=1:e2
%                     for f=1:f2
%                         for g=1:g2
%                             for h=1:h2
%                                 for i=1:i2
                                    %                                     for j=1:j2
                                    %                                         for k=1:k2
                                    %                                             for l=1:l2
                                    %                                                 for m=1:m2
                                    %                                                     for n=1:n2
                                    %                                                         for o=1:o2
                                    newCt=zeros(Cidx(end,1),1);
                                    if a1(1)~=0
                                        newCt(1:Cidx(2))=a1(a,:)';
                                    end
                                    if b1(1)~=0
                                        newCt(Cidx(2)+1:Cidx(3))=b1(b,:)';
                                    end
                                    if c1(1)~=0
                                        newCt(Cidx(3)+1:Cidx(4))=c1(c,:)';
                                    end
%                                     if d1(1)~=0
%                                         newCt(Cidx(4)+1:Cidx(5))=d1(d,:)';
%                                     end
%                                     if e1(1)~=0
%                                         newCt(Cidx(5)+1:Cidx(6))=e1(e,:)';
%                                     end
%                                     if f1(1)~=0
%                                         newCt(Cidx(6)+1:Cidx(7))=f1(f,:)';
%                                     end
%                                     if g1(1)~=0
%                                         newCt(Cidx(7)+1:Cidx(8))=g1(g,:)';
%                                     end
%                                     if h1(1)~=0
%                                         newCt(Cidx(8)+1:Cidx(9))=h1(h,:)';
%                                     end
%                                     if i1(1)~=0
%                                         newCt(Cidx(9)+1:Cidx(10))=i1(i,:)';
%                                     end
                                    %                                                     if j1(1)~=0
                                    %                                                         newCt(Cidx(10)+1:Cidx(11))=j1(j,:)';
                                    %                                                     end
                                    %                                                     if k1(1)~=0
                                    %                                                         newCt(Cidx(11)+1:Cidx(12))=k1(k,:)';
                                    %                                                     end
                                    %                                                     if l1(1)~=0
                                    %                                                         newCt(Cidx(12)+1:Cidx(13))=l1(l,:)';
                                    %                                                     end
                                    %                                                     if m1(1)~=0
                                    %                                                         newCt(Cidx(13)+1:Cidx(14))=m1(m,:)';
                                    %                                                     end
                                    %                                                             if n1(1)~=0
                                    %                                                                 newCt(Cidx(14)+1:Cidx(15))=n1(n,:)';
                                    %                                                             end
                                    %                                                             if o1(1)~=0
                                    %                                                                 newCt(Cidx(15)+1:Cidx(16))=o1(o,:)';
                                    %                                                             end
                                    [chk]= planar_given_crossings(el,Cidx,newCt);
                                    chkcnt=chkcnt+1;
                                    if mod(chkcnt,1000000)==0
                                        [chkcnt,isomcnt,chk2np]
                                    end
%                                     if chkcnt>1000000
%                                         check=1;
%                                         return
%                                     end
                                    if chk==1
                                        [chk2]= planar_extended_given_crossings(el,Cidx,newCt);
                                        if chk2==1
                                            check=1;
                                            return
                                        end
%                                         if chk2==0
%                                             chk2np=chk2np+1;
%                                         
%                                         end
%                                         if chk2==1
%                                            isomcnt=isomcnt+1;
%                                             Gcidx{isomcnt}=Cidx;
%                                             Gclab{isomcnt}=newCt; 
%                                         end
%                                         check=1;
%                                         good=1;
%                                         return
%                                         for z=1:isomcnt
%                                             [checkz] = check_isom_drawings(el,Cidx,newCt,Gcidx{z},Gclab{z});
%                                             if checkz==1
%                                                 good=0;
%                                                 break
%                                             end
%                                         end
%                                         if good==1
%                                             isomcnt=isomcnt+1;
%                                             Gcidx{isomcnt}=Cidx;
%                                             Gclab{isomcnt}=newCt;
%                                             %                                                                      return
%                                         end
                                        
                                        %                                                             end
                                        %                                                         end
                                        %                                                     end
                                        %                                                 end
                                        %                                             end
                                        %                                         end
%                                     end
%                                 end
%                             end
%                         end
%                     end
%                 end
            end
        end
    end
end


end