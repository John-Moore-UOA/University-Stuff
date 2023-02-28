% Author John Moore
% 02/09/2022

% compare array 2 non null arrays together, return position / indices of matching
% values

% FindMatchIndices([3 1 4 1 5], [1 2 3 0])
% should return [1 2 4]

% FindMatchIndices([1 2 3 4 5], [1 2 3 4 5])
% FindMatchIndices([1 1 1], [1 1 1])

% FindMatchIndices([1 2 3 0],[3 1 4 1 5])
% should return [1 3]

function [pos_array] = FindMatchIndices(array_one, array_two)
% initializes pos_array as null array
pos_array = [];
% iteratate through all of array one
for i=1:length(array_one)
    % iteratate through all of array two
    undiscovered = true;
    for j=1:length(array_two)

        % if the value of array one is discovered anywhere in array two
        if array_one(i) == array_two(j) && undiscovered
            % push back value position in array_one in pos_array
            pos_array(end+1) = i;
            undiscovered = false;
        end

    end
end
end

