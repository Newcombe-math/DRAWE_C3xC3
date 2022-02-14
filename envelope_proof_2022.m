%The below script proves that there is no drawing of the envelope graph
%with 14 crossings.
el=[1 2
    1 3
    1 4
    2 3
    2 5
    3 6
    4 5
    4 6
    5 6
    ];

%Find all six cycles with extra triangle edge (36 in total), by solving
%subgraph isomorphsim.
el2=[1,2;2,3;3,4;4,5;5,6;1,3;1,6];
[A, Aid] = find_all_subgraphs_isomorphism(el,6,7,el2);
zaid=size(Aid,1);


%A 6-cycle with two triangle edges added on opposite sides. The pair of
%triangles must have a missed pair and the four cycle must have a missed
%pair. If there is only a single missed pair in a croosing maximal drawing,
%then it must be between edges 2 and 4. Then, we exhaustively show that no
%drawing exists by running drawe (inside subgraph_heuristic). The output being 0 and thus there is
%always at least two missed pairs. (runtime ~ 2 hours)
el2=[1 2;1 4;1 5;2 3;2 6;3 4;3 6;4 5];
possible=[];
possible{1}=[2,4];
possiblenum=1;
[possible2,possiblenum2,impossible_subgraphs] = subgraph_heuristic(el,possible,possiblenum,impossible_subgraphs);
[A2, A2id] = find_all_subgraphs_isomorphism(el,6,8,el2);
za2id=size(Aid,1);

%then we check for any prescriptions which satisfy all the above
%constraints (and 4-cycles, pairs of triangles). There are no possible perscriptions which satisfy these constraints.
[possible,possiblenum] = envelope_check_4_missed_pairs(el,A,Aid,zaid,A2,A2id,za2id);

%Alternatively, one could leave out the 6-cycle with two triangles
%constraint, leaving 48 possibilities and then check each of these with
%drawe. This takes approximately 1 week of runtime, but the rsult is the
%same.
save('sghoutput.mat','possible','possiblenum');
impossible_subgraphs=[];
[possible2,possiblenum2,impossible_subgraphs] = subgraph_heuristic(el,possible,possiblenum,impossible_subgraphs);