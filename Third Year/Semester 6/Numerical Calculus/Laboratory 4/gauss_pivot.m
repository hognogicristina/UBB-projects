﻿function x = gauss_pivot(A, b)
    [r, n] = size(A);
    x = zeros(size(b));
    A = [A, b];
    
    for j = 1:n-1
        [v, p] = max(abs(A(j:r, j))); 
        
        p = p+j-1;
        if p ~= j
            A([j, p], :) = A([p, j], :);
        end
            
        for i = j+1:r
            m = A(i, j) / A(j, j);
            A(i, j:n+1) = A(i, j:n+1) - m*A(j, j:n+1);
        end
    end
    
    x = backward_subs(A(:, 1:n), A(:, n+1));
end