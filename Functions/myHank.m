% Hankel matrix generator
% function H = hank(X,n)
% s --> data vector
% n --> order

function H = myHank(s,n)
N=length(s);

H=zeros(N-n,n);
for i=1:N-n
    for j=1:n
        H(i,j)=[s(i-j+n)];  %we cannot access negative indexes, so: y(0)->s(n), ... , y(1-n)->s(1) (same for u)
           
    end
end


end


