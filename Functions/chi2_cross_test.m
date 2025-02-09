function  chi2_cross_test(r_eu,u_validation,alpha,m,N_validation)
    H=myHank(u_validation,m);
    sigma_u=(H'*H)/N_validation;
    x=N_validation*(r_eu(m+2:2*m+1)'*inv(sigma_u)*r_eu(m+2:2*m+1))/r_eu(m+1);
    if x<=chi2inv(1-alpha,m)
        disp('u and epsilon are uncorrelated');
    else
        disp('u and epsilon are correlated');
    end
end