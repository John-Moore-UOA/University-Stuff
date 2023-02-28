function FilePractice(FileAdress)

FID = fopen(FileAdress, "w");

if FID == -1
    fprintf(2,"File could not be opened...\n");
else
    for i = 1:100
        fprintf(FID, "%d %d\n", i, 2*i);
    end

    fclose(FID);
end



FID = fopen(FileAdress, "r");

if FID == -1
    fprintf(2,"File could not be opened...\n");
else
    while fgetl(FID) ~= -1
        fprintf("%s\n", fgetl(FID));
    end  
    
    fclose(FID);
end


end

