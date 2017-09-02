function [axial, radial] = compute_axial_radial(power, R)
    weight = (R.^2 - (R-0.02).^2)';
    axial = sum(power*weight,2);
    radial = sum(power,1);
    
 
end