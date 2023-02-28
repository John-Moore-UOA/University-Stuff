


function [colour_image] = AdjustBrightness(colour_image, gamma)

for i=1:height(colour_image)
    for j=1:length(colour_image)
        for k = 1:3
            % for each RGB
            colour_image(i,j, k) = uint8(255 * (double(colour_image(i,j,k))/255).^gamma);
        end
    end
end


end

