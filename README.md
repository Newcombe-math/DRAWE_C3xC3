# DRAWE_C3xC3
Code used for verifying the proof of maxcr(C3xC3)=78, from https://arxiv.org/pdf/2005.06699.pdf

This is specific purpose code, for manual verification of the arguments in the above paper. There are several parts which can be verified, and we recommend running each manually and observing the output yourself. The files work in Matlab 2021b, and require access to Matlab's graphisomorphism function. Additionally, a graph planarity checker is required and we have used an implementation from MatlabBGL, available online and written by David Gleich. If you have no access to these, technically your own graphisomorphsim checker and planarity checker can be used instead, but we recommend against it as these are quite technical algorithms to write efficiently.

For re-running full verification from scratch:

-Add current folder, drawe_files, and planarity checker folder to the Matlab path.

-Modify planar_given_crossings.m and planar_extended_given_crossings.m. The line for modification is commented and it just needs replaced by your own planarity checker which outputs 1 if the graph is planar and 0 otherwise.

-Open envelope_proof_2022.m. Read the comments and copy each section into the command line to observe the outputs. Essentially, we find several subgraphs, for which it is known that they have missed pairs. These are subgraph constraints. Then, we loop through all possible prescriptions which correspond to 14 crossings and show that for each one, a constraint is violated.

-Open GminusV_proof_2022.m and do the same method as above. For the 10_missed_pairs and 11_missed_pairs_2bowtie, there are now prescriptions which do not violate any of the previous constraints. For each of these prescriptions, we heuristically select subgraphs and run them with the drawe procedure. The procedure finds a subgraph for which it proves that the subgraph cannot be drawn to satisfy that prescription. If the current subgraph requires more than 1e8 planarity checks, then that subgraph is skipped. The heuristic step takes approximately one day to complete for the 10_missed_pairs and approx 3 days for the 11_missed_pairs_2bowtie. 

Upon successful completion, the code has proved that G-v cannot be drawn with 9 or 10 missed pairs, or, 11 missed pairs where two of them come from a single bowtie. These are the required statements to complete the proof in the paper.

Alternatively, we provide the precomputed subgraphs found by the heuristic in output_g-v_10missed.mat and output_g-v_11missed_2bowtie.mat. These can be verified by loading one of these files and the edge list (el) of G-v, and then running subgraph_check_drawe(el,possible,possiblenum,impossible_subgraphs). This code takes the subgraph and verifies that it cannot be drawn to satisfy the corresponding prescription by using drawe. To run this check, a planarity algorithm is still needed.

Finally, we comment that none of this code is optimised for efficiency. If you have questions or comments, please contact alex.newcombe@flinders.edu.au or michael.haythorpe@flinders.edu.au
