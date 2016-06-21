function prm=prim()
% clc;

SIZE=100005;
for i=1:SIZE
    flag(i)=false;
end
cnd=sqrt(SIZE)+1;
for i=3:2:cnd
    if flag(i)==false
        r=i*2;
        for j=i*i:r:SIZE
            flag(j)=true;
        end
    end
end

j=2;
prm=[2];
for i=3:2:SIZE
    if flag(i)==false
        prm(j)=i;
        j=j+1;
    end
end

% disp(prm);

end