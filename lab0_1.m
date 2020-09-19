col = zeros(12,12);

for c = 1:3:144
    col(c) = 1;    
end

for d = 3:3:144
    col(d) = rand;
end

ans = col';
