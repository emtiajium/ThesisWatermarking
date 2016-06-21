clc;
clear all;

z = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare.wav';
[arr, fs] = wavread(z);

wtr=imageP();
% disp(wtr);

q=audioP(arr);
% disp(q);

sz=size(wtr);

for i=1:sz(1)
    for j=1:sz(2)
        key(i,j)=bitxor(wtr(i,j),q(i,j));
    end
end


% disp(key);

SNR=20;
yq=awgn(arr,SNR);

% zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(128).mp3';
% [yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

zzz=logical(wbar);
imshow(zzz);
imwrite(zzz,'filename.png');

val=ncber(wtr,wbar);
