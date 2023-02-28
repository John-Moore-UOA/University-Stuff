% Author John Moore
% 05/09/2022
%
% This function will recive as arguments, two seperate arrays for which two
% arrays will be returned, being the positions of each respective array
% matches with any value of the other


function [match_one, match_two] = FindMatchPositions(array_one, array_two)

% find the position of matches
pos_one = FindMatchIndices(array_one(1, :), array_two(1,:));
% select the indice of the seccond row of the first array
if ~isempty(pos_one)
    match_one = array_one(2, pos_one);
else
    match_one = [];
end
% find the position of the matches
pos_two = FindMatchIndices(array_two(1, :), array_one(1,:));
% select the indice of the seccond row of the first array
if ~isempty(pos_two)
    match_two = array_two(2, pos_two);
else
    match_two = [];
end

end

