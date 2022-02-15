function [possible,possiblenum] = minusvertex_check_11_missed_pairs_2bowtie(el,A,Aid,zaid,C1,C2,C1id,C2id,cid,D,Did,zdid)

z=combntns(1:14,2);
zn=size(z,1);
cnt=0;
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
cnt1=0;
totcnt=0;
possible=[];
possiblenum=0;
doublecross=[2,8,1,8;2,8,5,8;2,8,3,5;2,8,4,5];

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
                for rrrrr=rrrr+1:zn
                    i=z(rrrrr,1);
                    j=z(rrrrr,2);
                    for rrrrrr=rrrrr+1:zn
                        k=z(rrrrrr,1);
                        l=z(rrrrrr,2);
                        
                        for rrrrrrr=rrrrrr+1:zn
                            m=z(rrrrrrr,1);
                            n=z(rrrrrrr,2);
                            for rrrrrrrr=rrrrrrr+1:zn
                                o=z(rrrrrrrr,1);
                                p=z(rrrrrrrr,2);
                                for rrrrrrrrr=rrrrrrrr+1:zn
                                    q=z(rrrrrrrrr,1);
                                    r=z(rrrrrrrrr,2);
                                    for rrrrrrrrrr=1:4

%                                         s=z(rrrrrrrrrr,1);
%                                         t=z(rrrrrrrrrr,2);
                                            s=doublecross(rrrrrrrrrr,1);
                                            t=doublecross(rrrrrrrrrr,2);
                                            u=doublecross(rrrrrrrrrr,3);
                                            v=doublecross(rrrrrrrrrr,4);
%                                         for rrrrrrrrrrr=rrrrrrrrrr+1:6
%                                             u=z(rrrrrrrrrrr,1);
%                                             v=z(rrrrrrrrrrr,2);

%                                             u=doublecross(rrrrrrrrrrr,1);
%                                             v=doublecross(rrrrrrrrrrr,2);
                                            totcnt=totcnt+1;
%                                             if totcnt<totcnt2
%                                                 continue
%                                             end
                                            if mod(totcnt,100000000)==0
                                                [totcnt]
                                                [possiblenum,cnt1]
                                            end
                                            %4 cycles
                                            check=0;
                                            if (a==3 && b==6) || (c==3 && d==6) || (e==3 && f==6) || (g==3 && h==6) || (i==3 && j==6) || (k==3 && l==6) || (m==3 && n==6) || (o==3 && p==6) || (q==3 && r==6) || (s==3 && t==6) || (u==3 && v==6)
                                                check=1;
                                            end
                                            if (a==1 && b==9) || (c==1 && d==9) || (e==1 && f==9) || (g==1 && h==9) || (i==1 && j==9) || (k==1 && l==9) || (m==1 && n==9) || (o==1 && p==9) || (q==1 && r==9) || (s==1 && t==9) || (u==1 && v==9)
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if (a==1 && b==11) || (c==1 && d==11) || (e==1 && f==11) || (g==1 && h==11) || (i==1 && j==11) || (k==1 && l==11) || (m==1 && n==11) || (o==1 && p==11) || (q==1 && r==11) || (s==1 && t==11) || (u==1 && v==11)
                                                check=1;
                                            end
                                            if (a==4 && b==7) || (c==4 && d==7) || (e==4 && f==7) || (g==4 && h==7) || (i==4 && j==7) || (k==4 && l==7) || (m==4 && n==7) || (o==4 && p==7) || (q==4 && r==7) || (s==4 && t==7) || (u==4 && v==7)
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if (a==9 && b==11) || (c==9 && d==11) || (e==9 && f==11) || (g==9 && h==11) || (i==9 && j==11) || (k==9 && l==11) || (m==9 && n==11) || (o==9 && p==11) || (q==9 && r==11) || (s==9 && t==11) || (u==9 && v==11)
                                                check=1;
                                            end
                                            if (a==8 && b==13) || (c==8 && d==13) || (e==8 && f==13) || (g==8 && h==13) || (i==8 && j==13) || (k==8 && l==13) || (m==8 && n==13) || (o==8 && p==13) || (q==8 && r==13) || (s==8 && t==13) || (u==8 && v==13)
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if (a==3 && b==14) || (c==3 && d==14) || (e==3 && f==14) || (g==3 && h==14) || (i==3 && j==14) || (k==3 && l==14) || (m==3 && n==14) || (o==3 && p==14) || (q==3 && r==14) || (s==3 && t==14) || (u==3 && v==14)
                                                check=1;
                                            end
                                            if (a==2 && b==10) || (c==2 && d==10) || (e==2 && f==10) || (g==2 && h==10) || (i==2 && j==10) || (k==2 && l==10) || (m==2 && n==10) || (o==2 && p==10) || (q==2 && r==10) || (s==2 && t==10) || (u==2 && v==10)
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if (a==6 && b==14) || (c==6 && d==14) || (e==6 && f==14) || (g==6 && h==14) || (i==6 && j==14) || (k==6 && l==14) || (m==6 && n==14) || (o==6 && p==14) || (q==6 && r==14) || (s==6 && t==14) || (u==6 && v==14)
                                                check=1;
                                            end
                                            if (a==5 && b==12) || (c==5 && d==12) || (e==5 && f==12) || (g==5 && h==12) || (i==5 && j==12) || (k==5 && l==12) || (m==5 && n==12) || (o==5 && p==12) || (q==5 && r==12) || (s==5 && t==12) || (u==5 && v==12)
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            %triangles
                                            check=0;
                                            if     ((a==4 || a==3 || a==8) && (b==6 || b==7 || b==13)) ...
                                                || ((c==4 || c==3 || c==8) && (d==6 || d==7 || d==13)) ...
                                                || ((e==4 || e==3 || e==8) && (f==6 || f==7 || f==13)) ...
                                                || ((g==4 || g==3 || g==8) && (h==6 || h==7 || h==13)) ...
                                                || ((i==4 || i==3 || i==8) && (j==6 || j==7 || j==13)) ...
                                                || ((k==4 || k==3 || k==8) && (l==6 || l==7 || l==13)) ...
                                                || ((m==4 || m==3 || m==8) && (n==6 || n==7 || n==13)) ...
                                                || ((o==4 || o==3 || o==8) && (p==6 || p==7 || p==13)) ...
                                                || ((q==4 || q==3 || q==8) && (r==6 || r==7 || r==13)) ...
                                                || ((s==4 || s==3 || s==8) && (t==6 || t==7 || t==13)) ...
                                                || ((u==4 || u==3 || u==8) && (v==6 || v==7 || v==13))
                                                check=1;
                                            end
                                            if     ((b==4 || b==3 || b==8) && (a==6 || a==7 || a==13)) ...
                                                || ((d==4 || d==3 || d==8) && (c==6 || c==7 || c==13)) ...
                                                || ((f==4 || f==3 || f==8) && (e==6 || e==7 || e==13)) ...
                                                || ((h==4 || h==3 || h==8) && (g==6 || g==7 || g==13)) ...
                                                || ((j==4 || j==3 || j==8) && (i==6 || i==7 || i==13)) ...
                                                || ((l==4 || l==3 || l==8) && (k==6 || k==7 || k==13)) ...
                                                || ((n==4 || n==3 || n==8) && (m==6 || m==7 || m==13)) ...
                                                || ((p==4 || p==3 || p==8) && (o==6 || o==7 || o==13)) ...
                                                || ((r==4 || r==3 || r==8) && (q==6 || q==7 || q==13)) ...
                                                || ((t==4 || t==3 || t==8) && (s==6 || s==7 || s==13)) ...
                                                || ((v==4 || v==3 || v==8) && (u==6 || u==7 || u==13))
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if     ((a==2 || a==5 || a==1) && (b==9 || b==10 || b==12)) ...
                                                || ((c==2 || c==5 || c==1) && (d==9 || d==10 || d==12)) ...
                                                || ((e==2 || e==5 || e==1) && (f==9 || f==10 || f==12)) ...
                                                || ((g==2 || g==5 || g==1) && (h==9 || h==10 || h==12)) ...
                                                || ((i==2 || i==5 || i==1) && (j==9 || j==10 || j==12)) ...
                                                || ((k==2 || k==5 || k==1) && (l==9 || l==10 || l==12)) ...
                                                || ((m==2 || m==5 || m==1) && (n==9 || n==10 || n==12)) ...
                                                || ((o==2 || o==5 || o==1) && (p==9 || p==10 || p==12)) ...
                                                || ((q==2 || q==5 || q==1) && (r==9 || r==10 || r==12)) ...
                                                || ((s==2 || s==5 || s==1) && (t==9 || t==10 || t==12)) ...
                                                || ((u==2 || u==5 || u==1) && (v==9 || v==10 || v==12))
                                                check=1;
                                            end
                                            if     ((b==2 || b==5 || b==1) && (a==9 || a==10 || a==12)) ...
                                                || ((d==2 || d==5 || d==1) && (c==9 || c==10 || c==12)) ...
                                                || ((f==2 || f==5 || f==1) && (e==9 || e==10 || e==12)) ...
                                                || ((h==2 || h==5 || h==1) && (g==9 || g==10 || g==12)) ...
                                                || ((j==2 || j==5 || j==1) && (i==9 || i==10 || i==12)) ...
                                                || ((l==2 || l==5 || l==1) && (k==9 || k==10 || k==12)) ...
                                                || ((n==2 || n==5 || n==1) && (m==9 || m==10 || m==12)) ...
                                                || ((p==2 || p==5 || p==1) && (o==9 || o==10 || o==12)) ...
                                                || ((r==2 || r==5 || r==1) && (q==9 || q==10 || q==12)) ...
                                                || ((t==2 || t==5 || t==1) && (s==9 || s==10 || s==12)) ...
                                                || ((v==2 || v==5 || v==1) && (u==9 || u==10 || u==12))
                                                check=1;
                                            end
                                            if check<1
                                                continue
                                            end
                                            
                                            %bowties first bowtie has
                                            %missed pair by choice of
                                            %s,t,u,v
%                                             check=0;
%                                             if ((a==4 || a==3 || a==8) && (b==2 || b==5 || b==1)) || ((c==4 || c==3 || c==8) && (d==2 || d==5 || d==1)) || ((e==4 || e==3 || e==8) && (f==2 || f==5 || f==1)) || ((g==4 || g==3 || g==8) && (h==2 || h==5 || h==1)) || ((i==4 || i==3 || i==8) && (j==2 || j==5 || j==1)) || ((k==4 || k==3 || k==8) && (l==2 || l==5 || l==1)) || ((m==4 || m==3 || m==8) && (n==2 || n==5 || n==1)) || ((o==4 || o==3 || o==8) && (p==2 || p==5 || p==1)) || ((q==4 || q==3 || q==8) && (r==2 || r==5 || r==1)) || ((s==4 || s==3 || s==8) && (t==2 || t==5 || t==1)) || ((u==4 || u==3 || u==8) && (v==2 || v==5 || v==1))
%                                                 check=check+1;
%                                             end
%                                             if ((b==4 || b==3 || b==8) && (a==2 || a==5 || a==1)) || ((d==4 || d==3 || d==8) && (c==2 || c==5 || c==1)) || ((f==4 || f==3 || f==8) && (e==2 || e==5 || e==1)) || ((h==4 || h==3 || h==8) && (g==2 || g==5 || g==1)) || ((j==4 || j==3 || j==8) && (i==2 || i==5 || i==1)) || ((l==4 || l==3 || l==8) && (k==2 || k==5 || k==1)) || ((n==4 || n==3 || n==8) && (m==2 || m==5 || m==1)) || ((p==4 || p==3 || p==8) && (o==2 || o==5 || o==1)) || ((r==4 || r==3 || r==8) && (q==2 || q==5 || q==1)) || ((t==4 || t==3 || t==8) && (s==2 || s==5 || s==1)) || ((v==4 || v==3 || v==8) && (u==2 || u==5 || u==1))
%                                                 check=check+1;
%                                             end
%                                             if check==0
%                                                 continue
%                                             end
                                            
                                            check=0;
                                            if     ((a==4 || a==3 || a==8) && (b==10 || b==9 || b==12)) ...
                                                || ((c==4 || c==3 || c==8) && (d==10 || d==9 || d==12)) ...
                                                || ((e==4 || e==3 || e==8) && (f==10 || f==9 || f==12)) ...
                                                || ((g==4 || g==3 || g==8) && (h==10 || h==9 || h==12)) ...
                                                || ((i==4 || i==3 || i==8) && (j==10 || j==9 || j==12)) ...
                                                || ((k==4 || k==3 || k==8) && (l==10 || l==9 || l==12)) ...
                                                || ((m==4 || m==3 || m==8) && (n==10 || n==9 || n==12)) ...
                                                || ((o==4 || o==3 || o==8) && (p==10 || p==9 || p==12)) ...
                                                || ((q==4 || q==3 || q==8) && (r==10 || r==9 || r==12)) ...
                                                || ((s==4 || s==3 || s==8) && (t==10 || t==9 || t==12)) ...
                                                || ((u==4 || u==3 || u==8) && (v==10 || v==9 || v==12))
                                                check=1;
                                            end
                                            if     ((b==4 || b==3 || b==8) && (a==10 || a==9 || a==12)) ...
                                                || ((d==4 || d==3 || d==8) && (c==10 || c==9 || c==12)) ...
                                                || ((f==4 || f==3 || f==8) && (e==10 || e==9 || e==12)) ...
                                                || ((h==4 || h==3 || h==8) && (g==10 || g==9 || g==12)) ...
                                                || ((j==4 || j==3 || j==8) && (i==10 || i==9 || i==12)) ...
                                                || ((l==4 || l==3 || l==8) && (k==10 || k==9 || k==12)) ...
                                                || ((n==4 || n==3 || n==8) && (m==10 || m==9 || m==12)) ...
                                                || ((p==4 || p==3 || p==8) && (o==10 || o==9 || o==12)) ...
                                                || ((r==4 || r==3 || r==8) && (q==10 || q==9 || q==12)) ...
                                                || ((t==4 || t==3 || t==8) && (s==10 || s==9 || s==12)) ...
                                                || ((v==4 || v==3 || v==8) && (u==10 || u==9 || u==12))
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if     ((a==6 || a==7 || a==13) && (b==10 || b==9 || b==12)) ...
                                                || ((c==6 || c==7 || c==13) && (d==10 || d==9 || d==12)) ...
                                                || ((e==6 || e==7 || e==13) && (f==10 || f==9 || f==12)) ...
                                                || ((g==6 || g==7 || g==13) && (h==10 || h==9 || h==12)) ...
                                                || ((i==6 || i==7 || i==13) && (j==10 || j==9 || j==12)) ...
                                                || ((k==6 || k==7 || k==13) && (l==10 || l==9 || l==12)) ...
                                                || ((m==6 || m==7 || m==13) && (n==10 || n==9 || n==12)) ...
                                                || ((o==6 || o==7 || o==13) && (p==10 || p==9 || p==12)) ...
                                                || ((q==6 || q==7 || q==13) && (r==10 || r==9 || r==12)) ...
                                                || ((s==6 || s==7 || s==13) && (t==10 || t==9 || t==12)) ...
                                                || ((u==6 || u==7 || u==13) && (v==10 || v==9 || v==12))
                                                check=1;
                                            end
                                            if     ((b==6 || b==7 || b==13) && (a==10 || a==9 || a==12)) ...
                                                || ((d==6 || d==7 || d==13) && (c==10 || c==9 || c==12)) ...
                                                || ((f==6 || f==7 || f==13) && (e==10 || e==9 || e==12)) ...
                                                || ((h==6 || h==7 || h==13) && (g==10 || g==9 || g==12)) ...
                                                || ((j==6 || j==7 || j==13) && (i==10 || i==9 || i==12)) ...
                                                || ((l==6 || l==7 || l==13) && (k==10 || k==9 || k==12)) ...
                                                || ((n==6 || n==7 || n==13) && (m==10 || m==9 || m==12)) ...
                                                || ((p==6 || p==7 || p==13) && (o==10 || o==9 || o==12)) ...
                                                || ((r==6 || r==7 || r==13) && (q==10 || q==9 || q==12)) ...
                                                || ((t==6 || t==7 || t==13) && (s==10 || s==9 || s==12)) ...
                                                || ((v==6 || v==7 || v==13) && (u==10 || u==9 || u==12))
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            check=0;
                                            if     ((a==6 || a==7 || a==13) && (b==2 || b==5 || b==1)) ...
                                                || ((c==6 || c==7 || c==13) && (d==2 || d==5 || d==1)) ...
                                                || ((e==6 || e==7 || e==13) && (f==2 || f==5 || f==1)) ...
                                                || ((g==6 || g==7 || g==13) && (h==2 || h==5 || h==1)) ...
                                                || ((i==6 || i==7 || i==13) && (j==2 || j==5 || j==1)) ...
                                                || ((k==6 || k==7 || k==13) && (l==2 || l==5 || l==1)) ...
                                                || ((m==6 || m==7 || m==13) && (n==2 || n==5 || n==1)) ...
                                                || ((o==6 || o==7 || o==13) && (p==2 || p==5 || p==1)) ...
                                                || ((q==6 || q==7 || q==13) && (r==2 || r==5 || r==1)) ...
                                                || ((s==6 || s==7 || s==13) && (t==2 || t==5 || t==1)) ...
                                                || ((u==6 || u==7 || u==13) && (v==2 || v==5 || v==1))
                                                check=1;
                                            end
                                            if     ((b==6 || b==7 || b==13) && (a==2 || a==5 || a==1)) ...
                                                || ((d==6 || d==7 || d==13) && (c==2 || c==5 || c==1)) ...
                                                || ((f==6 || f==7 || f==13) && (e==2 || e==5 || e==1)) ...
                                                || ((h==6 || h==7 || h==13) && (g==2 || g==5 || g==1)) ...
                                                || ((j==6 || j==7 || j==13) && (i==2 || i==5 || i==1)) ...
                                                || ((l==6 || l==7 || l==13) && (k==2 || k==5 || k==1)) ...
                                                || ((n==6 || n==7 || n==13) && (m==2 || m==5 || m==1)) ...
                                                || ((p==6 || p==7 || p==13) && (o==2 || o==5 || o==1)) ...
                                                || ((r==6 || r==7 || r==13) && (q==2 || q==5 || q==1)) ...
                                                || ((t==6 || t==7 || t==13) && (s==2 || s==5 || s==1)) ...
                                                || ((v==6 || v==7 || v==13) && (u==2 || u==5 || u==1))
                                                check=1;
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                            % independent cycles
                                            check=1;
                                            for qq=1:cid
                                                cyccnt=0;
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[a,b]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[a,b]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[c,d]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[c,d]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[e,f]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[e,f]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[g,h]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[g,h]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[i,j]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[i,j]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[k,l]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[k,l]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[m,n]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[m,n]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[o,p]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[o,p]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[q,r]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[q,r]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[s,t]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[s,t]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(C1(qq,1:C1id(qq)),[u,v]))==C1id(qq)-1 && numel(setdiff(C2(qq,1:C2id(qq)),[u,v]))==C2id(qq)-1
                                                    cyccnt=cyccnt+1;
                                                end
                                                if mod(C1id(qq),2)==1 && mod(C2id(qq),2)==1
                                                    if mod(cyccnt,2)==0
                                                        check=0;
                                                    end
                                                end
                                                if mod(C1id(qq),2)==0 && mod(C2id(qq),2)==1
                                                    if mod(cyccnt,2)==1
                                                        check=0;
                                                    end
                                                end
                                            end
                                            if check==0
                                                continue
                                            end

                                            %Envelope graphs
                                            check=1;
                                            for qq=1:zdid
                                                cyccnt=0;
                                                if numel(setdiff(D(qq,1:Did(qq)),[a,b]))==Did(qq)-2
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[c,d]))==Did(qq)-2
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[e,f]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[g,h]))==Did(qq)-2
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[i,j]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[k,l]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[m,n]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[o,p]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[q,r]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[s,t]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if numel(setdiff(D(qq,1:Did(qq)),[u,v]))==Did(qq)-2 
                                                    cyccnt=cyccnt+1;
                                                end
                                                if cyccnt==4
                                                    check=0;
                                                    break
                                                end
                                            end
                                            if check==0
                                                continue
                                            end
                                            
                                             
                                            cnt=cnt+1;
                                            checkbad=0;
                                            for qq=1:zaid
                                                check=0;
%                                                 if mod(Aid(qq),2)==0 || Aid(qq)==7
                                                    
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
                                                    if numel(setdiff(A(qq,1:Aid(qq)),i))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),j))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if numel(setdiff(A(qq,1:Aid(qq)),k))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),l))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if numel(setdiff(A(qq,1:Aid(qq)),m))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),n))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if numel(setdiff(A(qq,1:Aid(qq)),o))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),p))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if numel(setdiff(A(qq,1:Aid(qq)),q))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),r))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if numel(setdiff(A(qq,1:Aid(qq)),s))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),t))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if numel(setdiff(A(qq,1:Aid(qq)),u))~=Aid(qq) && numel(setdiff(A(qq,1:Aid(qq)),v))~=Aid(qq)
                                                        check=1;
                                                        continue
                                                    end
                                                    if check==0
                                                        checkbad=1;
                                                        break
                                                    end
%                                                 end
                                            end
                                            if checkbad==0
                                                %                                             sum(tcnt2+scnt2+stcnt2)
                                                %                                             stsum
                                                %                                             pause
                                                cnt1=cnt1+1;
                                                %                                             [a,b;c,d;e,f;g,h;i,j;k,l;m,n;o,p;q,r;s,t]
                                                %                                             pause
                                                %                                             [clab, cidx]=clab_from_missed(el,[a,b;c,d;e,f;g,h;i,j;k,l;m,n;o,p;q,r]);
                                                %                                             [check2] = planar_given_crossings(el,cidx,clab);
                                                
                                                %                                             if check2==1
                                                possiblenum=possiblenum+1;
                                                possible{possiblenum,1}=[a,b;c,d;e,f;g,h;i,j;k,l;m,n;o,p;q,r;s,t;u,v];
                                                %                                             [a,b;c,d;e,f;g,h;i,j;k,l;m,n;o,p;q,r]
                                                %                                             pause
                                                %                                             end
%                                             end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end