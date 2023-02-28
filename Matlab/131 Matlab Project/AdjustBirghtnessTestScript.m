
% subplot
% call function

% dumb bug where the figure doesn't opened consistently


filename = input("Enter image Filename: ", 's');
img = imread(filename);

isHappy = false;


happy = false;
while ~happy 
 
    gamma = input('Enter a gamma value: '); 
    v = AdjustBrightness(img,gamma); 
 
    figure(1) 
    subplot(2,1,1); 
    imshow(img); 
    subplot(2,1,2); 
    imshow(v); 
 
    happy = input('Enter 1 if you are happy and 0 otherwise:'); 
     
end 

fid = fopen("AdjustBrightnessFile.txt", "a");

if fid == -1
    fprintf(2, "Error opening file");
else
    
    fprintf(fid, "gamma%0.1f%s\n", gamma, filename);
    
    fclose(fid);
end









