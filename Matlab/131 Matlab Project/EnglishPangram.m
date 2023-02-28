

% this function will check is any input string is considered an English
% Pangram, a string where all letters occur at least once

%  This function will recieve one string, and will output a logical 1 or 0
%  for if the string is an english pangram

% The function will loop through each character in the input string and
% will tally up the sum of each letter relative to the english alphabet

% then it will check if each english letter is used at least once

function [isPangram] = EnglishPangram(str)
isPangram = true;
% initialise isPangram logical true to be proven false
% initialise letters to be an array of zeros 122-97 long, a-z
letters = zeros(122-97);
% loop through all chars of input string
for i = 1:strlength(str)
    if str(i) >= 65 && str(i) <= 90 % if captical letter
        letters(str(i)-64) = letters(str(i)-64)+1; % add to letters array proportional to capitial char value
    elseif(str(i) >= 97 && str(i) <= 122) % or if lower case
        letters(str(i)-96) = letters(str(i)-96)+1; % add to letters array proportional to lower char value
    end
end

% check if all letters occur at least once
for i = 1:(122-97)
    if letters(i) == 0 % if letter does not occur 
        isPangram = false; % set isPangram to false
    end
end


end

