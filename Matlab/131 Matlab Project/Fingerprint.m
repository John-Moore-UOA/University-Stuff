% Author John Moore
% 02/09/2022
%
%
% Will recive a (perhaps) 2by2 array formed from the Window function
% will return a 2 row by m array of the smallest value by the index of such
% value
%
%% Example:
% 3 1
% 1 4
% 4 1
% 1 5
% 5 9   index(5) = 5
% 9 2
% 2 6
% 6 5
% -->
% 1 1 5 2 5  (value / priority right)
% 2 4 5 7 9  (index)
%
%
%% Peusdo-Code
%
% loop through each row
% value = RightMin(line)
% index = row+column-1;
% output_array(1, j) = value;
% output_array(2, j) = index;


function [output_array] = Fingerprint(input_array)

% initalize array
output_array = [0;0];
iterative = 1;

% Loop down through each row
for i=1:height(input_array)

    % using the RightMin function, find the smallest value and its position
    % with each i'th row
    [value, pos] = RightMin(input_array(i,:));

    % index will be each row + which column subtract 1 due to repeating
    index = i+pos-1;

    % initalize boolean value
    matching_index = false;

    % searching for if index is already within output_array
    [num_columns, num_rows] = size(output_array);
    for k=1:num_rows
        if index == output_array(2,k)
            matching_index = true;
        end
    end

    % if index is not found within output_array
    if ~ matching_index
        % place value with index into new column of output_array
        output_array(:, iterative) = [value, index];

        % iterate, such that the next value submit will be across +1
        iterative = iterative + 1;
    end
end


end

