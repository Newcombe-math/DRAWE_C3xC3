function A = el_to_ajd(el)

N = max(max(el));

A = zeros(N);

for i=1:size(el,1)
    A(el(i,1),el(i,2)) = 1;
    A(el(i,2),el(i,1)) = 1;
end