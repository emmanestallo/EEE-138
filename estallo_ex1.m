function prod = estallo_ex1(A,B)
    prompt_a = 'Input vector A: ';
    prompt_b = 'Input vector B: ';
    
    A = input(prompt_a);
    B = input(prompt_b);
    
    if length(A)~=length(B)
        disp('Error. The vectors have different lengths');

    else
        prod = A.*B;
        disp(prod)
    end   
end