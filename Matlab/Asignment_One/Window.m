% Author John Moore
% 02/09/2022
%
% This function will recive a window_size and an input_array
% The output will be a 2 dimensional array of w by n size
%
%
% Example:
% [1 2 3 4 5 6 7 8 9 0]
% --> window_size = 4
% [1 2 3 4]
% [2 3 4 5]
% [3 4 5 6]
% [4 5 6 7]
% [5 6 7 8 9]
% [6 7 8 9 0]
%
% disp(Window(4,[3 1 4 1 5 9 2 6 5]))

function [output_array] = Window(window_size, input_array)

% initiate i
i=1;

% loop forever until break

if window_size >=length(input_array)
    output_array = input_array;
    return
end

while(1)

    % for aslong as there exists values
    if i+window_size-1 <= length(input_array)

        for pos = 1:window_size
            output_array(i, pos) = input_array(pos+(i-1));
        end
    else
        break;
    end

    i = i + 1;
end

end

