function [c0, c1] = fit_and_plot(x, y, comp, energy_gr)
%takes array of X and Y, find c0 and c1 so that 
% Y = C0 + C1*X
%and plot X and Y if the fit residual is bigger than some tolerance
% energy_gr: string to use in plot tile
    [p, some] = polyfit(x, y, 1);
    c1 = p(1);
    c0 = p(2);
    if isnan(c1)
       disp('NAN')
       disp(x)
       disp(y)
    end
    y_pred = c0 + c1*x;
    
    threshold = 10^20;  % threshold for relative error in fitting,
    %a large threshold turns off the warning
    residual = abs(max((y_pred - y)./y));
    if residual > threshold
        display('Warning from fit_and_plot.m: large(almost infinite) relative error, set c0 and c1 to 0')
        % this happens mostly because some of the cross-section data values
        % are 0, so (y_pred-y)/y = infinity; if they are either 0 or close
        % to 0, then we set the function coefficients to 0, so the cross
        % sections are 0 at all temperature
        %y
        %y_pred
        c0 = 0;
        c1 = 0;
    end
    
end
 