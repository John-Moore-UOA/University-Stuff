function [fp, filelength] = Winnow(filename,k,t)

% Author: Peter Bier
% Copied for the assignment
% The task was to produce other files


w = t - k + 1;

s = fileread(filename);

s = StripString(s);
filelength = length(s);

kgrams = Kgram(k,s);

hashes = HashList(kgrams);

windows = Window(w,hashes); 

fp = Fingerprint(windows);

end



