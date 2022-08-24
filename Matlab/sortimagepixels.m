% Author: John Moore
% Last Edited 15/08/2022
%
% This function will recieve an image array
% For each pixel the function will return a 256 value of either R,G,B
% values only in the strongest channel

function [input_array] = sortimagepixels(input_array)

[x,y,z] = size(input_array);

for r=1:x
    for c=1:y
        if  input_array(r,c,1) > input_array(r,c,2) &&  input_array(r,c,1) >  input_array(r,c,3)
            input_array(r,c,1) = 255;
            input_array(r,c,2) = 0;
            input_array(r,c,3) = 0;
        elseif  input_array(r,c,2) >  input_array(r,c,1) &&  input_array(r,c,2) >  input_array(r,c,3)
            input_array(r,c,1) = 0;
            input_array(r,c,2) = 255;
            input_array(r,c,3) = 0;
        else
            input_array(r,c,1) = 0;
            input_array(r,c,2) = 0;
            input_array(r,c,3) = 255;
        end
    end
end

end

