% Author John Moore
% 05/09/2022
%
% This function will produce a similarityScore based on input 1D array of
% indices, coresponding to found matches, a K_value, and the total length
% of the string that has been converted into K_grams
%
%% Algorithm Example:
% [1 2 6], k_value = 3, s_len = 10
% _ _ _ _ _ _ _ _ _ _
% match in 1, 2, 6
% X X _ _ _ X _ _ _ _
% k_value of 3, such that the next 3 should be highlighted in any match
% X X X X _ X X X _ _
% 7 of 10 highlighted, therefore..
% percent = 0.7



function [percent] = SimilarityScore(input_array, k_gram, s_len)

% defines the test array for which this algorithm will work through
test_array = zeros(1, s_len);

% from each 1 add pos_of_1:k_gram as 1
for i=1:length(input_array)
    test_array(input_array(i):(input_array(i)+k_gram-1)) = 1;
end

% take the mean of the array for the percent value
percent = mean(test_array);

end

