function [theta]=LS(y,u,n,type)
    if type==0 %FIR
        N=length(y)-n;
        H=myHank(u,n);
        theta=pinv(H'*H/N)*H'*y(n+1:end)/N;
    end
    if type==1 %ARX
        N=length(y)-n;
        H=[-myHank(y,n) myHank(u,n)];
        theta=pinv(H'*H/N)*H'*y(n+1:end)/N;
    end
end