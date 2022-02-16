el=[1 2
    1 3
    1 4
    1 5
    2 3
    2 6
    2 8
    4 5
    4 6
    4 7
    5 8
    6 7
    6 8
    3 7
    ];

%Find all six cycles with extra triangle edge (36 in total), by solving
%subgraph isomorphsim.
el2=[1,2;2,3;3,4;4,5;5,6;1,3;1,6];
[A, Aid] = find_all_subgraphs_isomorphism(el,6,7,el2);
zaid=size(Aid,1);

%Find all vertex dijoint cycle pairs, the prescription code requires the C2 vector
%to hold only odd length cycles, which is fine because all disjoint cycles
%in G-v have at least one odd cycle.
C1(1,1:5)=[10,8,11,13,12];
C1(2,1:5)=[2,4,11,7,5];
C1(3,1:4)=[8,11,13,9];
C1(4,1:4)=[1,4,11,7];
C1(5,1:5)=[14,5,7,13,12];
C1(6,1:4)=[14,5,6,12];
C1(7,1:5)=[14,2,4,8,10];
C1(8,1:4)=[14,2,3,10];

C2(1,1:3)=[2,5,1];
C2(2,1:3)=[9,10,12];
C2(3,1:3)=[2,5,1];
C2(4,1:3)=[9,10,12];
C2(5,1:3)=[3,4,8];
C2(6,1:3)=[3,4,8];
C2(7,1:3)=[6,7,13];
C2(8,1:3)=[6,7,13];

C1id=[5;5;4;4;5;4;5;4];
C2id=[3;3;3;3;3;3;3;3];
cid=size(C1id,1);

%Find the two envelope graphs in G-v and list out their possible missed
%pairs 18 possibilities for a missed pair.
el3=[1 2;1 3;1 4;2 3;2 5;3 6;4 5;4 6;5 6];
[D, Did] = find_all_subgraphs_isomorphism(el,6,9,el3);
zdid=size(Did,1);

%First, potential missed pairs of edges are found, which are 55 in total, after removing incident edges from consideration. 
%Then, run through all 55choose9 possible sets of missing pairs. Sets of
%missed pairs which violate properties 1-3 are removed. Additionally, each 4 cycle and each bowtie has at least 1
%missed pair, so sets which violate this are removed also. The outputs store the remaining possibile sets of missing
%pairs for further inspection (0 sets for this case).
[possible,possiblenum] = minusvertex_check_9_missed_pairs(el,A,Aid,zaid,C1,C2,C1id,C2id,cid,D,Did,zdid);


%First, potential missed pairs of edges are found, which are 55 in total, after removing incident edges from consideration. 
%Then, run through all 55choose10 possible sets of missing pairs. Sets of
%missed pairs which violate properties 1-3 are removed. Additionally, each 4 cycle and each bowtie has at least 1
%missed pair, so sets which violate this are removed also. The outputs store the remaining possibile sets of missing
%pairs for further inspection (74 sets for this case).
[possible10,possiblenum10] = minusvertex_check_10_missed_pairs(el,A,Aid,zaid,C1,C2,C1id,C2id,cid,D,Did,zdid);
%For each of the 74 sets, a subgraph is searched for which cannot be drawn
%to satisfy the prescription.
[~,~,impossible_subgraphs10] = subgraph_heuristic(el,possible10,possiblenum10,[]);


%First, potential missed pairs of edges are found, which are 55 in total, after removing incident edges from consideration. 
%Then, run through all 55choose10 possible sets of missing pairs. Sets of
%missed pairs which violate properties 1-3 are removed. Additionally, each 4 cycle and each bowtie has at least 1
%missed pair, so sets which violate this are removed also. The outputs store the remaining possibile sets of missing
%pairs for further inspection (286 sets for this case).
[possible11,possiblenum11] = minusvertex_check_11_missed_pairs_2bowtie(el,A,Aid,zaid,C1,C2,C1id,C2id,cid,D,Did,zdid);
%For each of the 286 sets, a subgraph is searched for which cannot be drawn
%to satisfy the prescription.
[~,~,impossible_subgraphs11] = subgraph_heuristic(el,possible11,possiblenum11,[]);

