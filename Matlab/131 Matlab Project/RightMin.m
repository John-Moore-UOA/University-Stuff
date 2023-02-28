% Author John Moore
% 02/09/2022
%
% This function will take in an array of numbers, and will output the
% smallest value, as well as the position in the array
% Value will be the smallest value, priority to the right
% 
% Example:
% [A, B] = RightMin([1 2 3 1])
% m = 1
% pos = 4

function [value, pos] = RightMin(num_array)

% set default position to 1
pos = 1;
% set default value to the first element in array
value = num_array(1);

% loop through all elements in array starting +1 into array
for i=2:length(num_array)
    % if the value is greater than the previous value
    if num_array(i) <= value
        value = num_array(i);
        pos = i;
    end

end


end

