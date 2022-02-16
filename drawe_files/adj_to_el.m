function el = adj_to_el(A)

N = size(A,1);
el = [];

count = 0;
for i=1:N
    for j=i+1:N
        if(A(i,j))
            count = count + 1;
            el(count,[1 2]) = [i j];
        end
    end
end
            