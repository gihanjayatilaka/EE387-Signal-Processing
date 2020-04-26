function y = ustep( t,ad)
    % ad: advance (positive), delay (negative) factor
    y = (t+ad) >= 0 ;

end

