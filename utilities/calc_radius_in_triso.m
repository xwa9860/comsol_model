function rs = calc_radius_in_triso()
    r_fuel = 0.00025; % outer radius of the fuel kernel in a triso particle
    V_zone = 4/3*pi*r_fuel^3/3;
    rs(1)=nthroot(V_zone/(4/3)/pi,3);
    rs(2)=nthroot(V_zone*2/(4/3)/pi,3);
    rs(3)=nthroot(V_zone*3/(4/3)/pi,3);
    r_triso= 0.00046;

    %% Equivalent matrix radius for the portion around one triso particle,
    % as if it's a spherical layer around the triso particle
    global triso_pf      
    r_matrix = r_triso/(triso_pf^(1/3));
    rs(4) = r_matrix;
 
end
        

