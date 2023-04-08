%gauss elimination
A=[6 3 2;6 4 3;20 15 12];
b=[6;0;0];
M=[Ab]
[m,n]=size(A)
for i=1:size(A,1)
    for j=i+1:size(A,1)
        key=A(j,i):key*A(i,:);
    end
end
x=zeros(1,size(A,2));
for i=size(A,1):-1:1
    hg=sum(A(i,i+1:end-1).*x(i+1:end));
    x(i)=(A(i,end)-hg)./A(i,i);
end
fprintf("solution is x=%d \n"x)