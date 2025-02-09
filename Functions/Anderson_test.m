function fail_count = Anderson_test(r_e,alpha,m,N_validation)
    fail_count=0;
    for i=2:m
        x=abs(r_e(i))*sqrt(N_validation);
        if x>norminv(1-alpha/2,0,1)
            fail_count=fail_count+1;
        end
    end
end