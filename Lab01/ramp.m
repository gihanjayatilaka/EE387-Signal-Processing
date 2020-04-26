function y = ramp( t, m, ad )
    % t : length of time                  
    % m : slope of the ramp function      
    % ad: advance (positive), delay (negative) factor                                          
    y = max(t+ad,0);
    y = y*m;    
    
end

