% Author John Moore
% 02/09/2022
%
% This function will recive a cell array of character arrays and will
% return a cell array of arrays of hash31'ed values



function [hashed_cells] = HashList(natural_cells)

% initalize hashed_cells cell array
hashed_cells = [];

% loop through all cells of natural_cells array
for i=1:length(natural_cells)
    %push back value of hash31 natural_cells into hashed_cells
    hashed_cells(end+1) = Hash31(natural_cells{i});
end


end

