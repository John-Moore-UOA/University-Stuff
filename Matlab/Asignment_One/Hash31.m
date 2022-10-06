% Author John Moore
% 2/09/2022
%
% This function takes in a character array, and will return a hased value
% by hash31 mathematical algortithm

function [hash_value] = Hash31(char_array)

i=1;
hash_value = 0;
while i <= length(char_array)
    hash_value = mod(double(char_array(i)) + 31*hash_value, 2^20);
    i = i+1;
end

end
