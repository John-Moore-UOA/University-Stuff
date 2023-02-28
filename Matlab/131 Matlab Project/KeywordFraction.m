% header comments

function [fraction_of_text] = KeywordFraction(samples, phrase)
% in-line comments
num_occurance = 0;
total_num_words = 0;

for i = 1:height(samples)
    for j = 1:length(samples)

        str = string(samples{i, j});

        total_num_words = total_num_words + length(strfind(str, " "))+1;
        num_occurance = num_occurance + length(strfind(str, phrase));

    end
end

if total_num_words > 0
    fraction_of_text = num_occurance/total_num_words;
else 
    fraction_of_text = 0;
end

end

