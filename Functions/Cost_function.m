function J = Cost_function(y,u,theta,type)
    if type==0 %FIR
        n=length(theta);
        N = length(y)-n;
        H= myHank(u,n);
        J=1/N*(y(n+1:end)-H*theta)'*(y(n+1:end)-H*theta);
    end

    if type==1 %ARX
        n=length(theta)/2;
        N = length(y)-n;
        H= [-myHank(y,n) myHank(u,n)];
        J=1/N*(y(n+1:end)-H*theta)'*(y(n+1:end)-H*theta);
    end
end