

% header comments

% k_value is just how long each sub string is

function [sub_cells] = KgramReWriteForUnderstanding(k_value, str)
% in-line comments
%fprintf("%d %d\n", strlength(str), k_value);
    if strlength(str) <= k_value
        sub_cells = {str};
    else
        for i = 1:(strlength(str)-k_value)+1
            sub_cells{i} = str(i:(i+k_value-1));
        end
    
    end
end

