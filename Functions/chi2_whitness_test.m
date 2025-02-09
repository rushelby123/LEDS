function chi2_whitness_test(r_e,alpha,m,N_validation)
    x=N_validation*(r_e(2:m)'*r_e(2:m));
    if x<=chi2inv(1-alpha,m)
        disp('chi square whitness test: the sequence is white');
    else
        disp('chi square whitness test: the sequence is not white');
    end
end