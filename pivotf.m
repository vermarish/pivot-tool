% TODO figure out pretty output.


function pivoted = pivotf(tableau, row, col)
    % look at each row
    
    m = size(tableau, 1);
    
    for i = (1:m)
        if (i ~= row)
            constant = -1 * tableau(i, col) / tableau(row, col);
            summa = constant * tableau(row,:);
            tableau(i,:) = tableau(i,:) + summa;
        end
    end
    pivoted = tableau;
end