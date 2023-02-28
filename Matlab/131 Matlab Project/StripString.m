% Author John Moore
% 02/09/2022

% This function will recive a string, and will output a character array of
% the string containing only characters between a(97) --> z(122)


function [char_array] = StripString(str)

% initatlize char_array to allow push_back
char_array = [];

% loop through all of string
for i=1:length(str)

    % if the char value of i'th element of str is between 97 and 122
    % inclusive, include in char_array
    if double(lower(str(i))) >= 33 && double(lower(str(i))) <= 126
        char_array(end+1) = lower(str(i));
    end
end
char_array = char(char_array);
end

