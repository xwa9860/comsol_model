%%This file is used to calculate the height of the core that is filled by
%%fuel pebble to achieve the volume ratio between flibe and porous
%%media(fuel + flibe) parts in the core. The algorithm changes pb_h, a
%%parameter used in comsol file to define the geometry, slightly every step
%%and let comsol to compute the volume(surface area for 2d model) for the
%%two parts. Stop until the two ratio are equal.


% param:
% s_fuel: fuel region surface area(2D model)
% s_flibe: flibe region surface area(2D model)
%% final result: 
%pb_h = 0.4501
%s_fuel/s_flibe - ratio_fuel_flibe = 2.3452e-04


ratio_fuel_flibe = 11000/(14000.0-11000.0);
pb_h = 0.44;
s_fuel = 1;
s_flibe = 0.1;

model = mphopen('diffusion_coupled');
while s_fuel/s_flibe - ratio_fuel_flibe > 0
    pb_h = pb_h + 0.0001;
    pb_h
    s_fuel/s_flibe - ratio_fuel_flibe
    model.param.set('pb_h', num2str(pb_h));
    model.sol('sol1').run
    % mphint2 : integration, mphmax : maximum value
    s_fuel = mphint2(model,'1','surface','selection',2);
    s_flibe = mphint2(model,'1','surface','selection',1);
end
  