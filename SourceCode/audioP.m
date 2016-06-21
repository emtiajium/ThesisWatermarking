function B=audioP(arr)

% clc;
% clear all;
% 
% [arr, fs] = audioread('C:\Users\Emtiaj\Documents\MATLAB\Sound\Thousand Yard Stare.wav');
n=length(arr);

H=dht(arr);

prm = prim();

% n=40;
k=32;
r=k^2;
smpl=n;
q=floor(smpl/r);
x=[];
inl=1;
finl=int32(q);
for i=1:r
    tot=0;
    for j=inl:finl
        tot=tot+abs(H(j));
    end
    inl=finl+1;
    finl=inl+q-1;
    tot=double(tot);
    yfoo = tot- floor(tot);
    m = str2num(strrep(num2str(yfoo),'.',''));
    m=int32(m);
    % disp(tot); disp(m);
    if m==0
        m=1;
    end
    if m>9592
        m=9592;
    end
    p=prm(m);
    v=bigmod(m,p,2);
    x(i)=v;
end
B = reshape(x,k,k);
B = int64(B);
% disp(B);