function [output_image] = InvertColour(image)

[height, length, depth] = size(image);

for i=1:height
    for j=1:length

        if image(i, j, 1) > image(i, j, 2) && image(i, j, 1) > image(i, j, 3)
            output_image(i, j, 1) = image(i, j, 1);
            output_image(i, j, 2) = 0;
            output_image(i, j, 3) = 0;
        else if image(i, j, 2) > image(i, j, 1) && image(i, j, 2) > image(i, j, 3)
                output_image(i, j, 1) = 0;
                output_image(i, j, 2) = image(i, j, 2);
                output_image(i, j, 3) = 0;
        else
            output_image(i, j, 1) = 0;
            output_image(i, j, 2) = 0;
            output_image(i, j, 3) = image(i, j, 3);
        end

        end
    end

end

