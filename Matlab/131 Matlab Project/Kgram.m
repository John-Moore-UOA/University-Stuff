% Author John Moore
% 02/09/2022
%
% This function splits an input string into k_value sized chunks which is
% output as sub_cell array
%
% k = 5
% 'doyouwantto'
% {doyou} {oyouw} {youwa} {ouwan} {uwant} {wantt} {antto}
% k = 7
% {doyouwa} {oyouwan} {youwant} {ouwantt} {uwantto} 5
% start: 7 --> 11    4

function [sub_cells] = Kgram(k_value, str)


if k_value >= length(str)
    sub_cells = {str};
else

    % initalize i
    i=1;

    % while true, will always run
    while (1)

        % if i+k_value will not exceed array of characters
        if (i+k_value) ~= length(str)+2
            % new sub_cell form
            sub_cells{i} = str(i:i+k_value-1);
        else
            % break while loop
            break;
        end

        % iterate i value
        i = i+1;
    end

end

end

