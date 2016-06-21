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

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(awgn).wav';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('awgn');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(resampling).wav';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('resamplingh');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(lpf).wav';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('lpf');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(requantized).wav';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('requantized');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(echo).wav';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('echo');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(reverse).wav';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('reverse');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(32).mp3';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('32');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(64).mp3';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('64');
val=ncber(wtr,wbar);

zz = 'C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare(128).mp3';
[yq, fs] = audioread(zz);

s=audioP(yq);
% disp(s);

for i=1:sz(1)
    for j=1:sz(2)
        wbar(i,j)=bitxor(key(i,j),s(i,j));
    end
end

disp('128');
val=ncber(wtr,wbar);