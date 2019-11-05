function y = U3distortionEffekt(x, Typ, D)

    %x = Eingangssignal
    %Typ = DistortionTyp
    %D = DistortionStärke

    
    
    %iftyp1
    if Typ==1
        y = tanh(D*x);
    elseif Typ==2
        z = D*x;
        y = -sign(-z)*(1-e^(sign(-z)*z));
    else
        error('error')
    end   
    
    return
    
end