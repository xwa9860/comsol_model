global pm_domains out_bound1 out_bound2 out_bound3
global in_bound_lower in_bound_center_low in_bound_center_curved in_bound_center_straight in_bound_up_curved in_bound_up_top;
global dimNb;

% create Brinkman module
model.physics.create('br', 'Brinkman', 'geom1');
model.physics('br').label('Momentum - Porous Media Flow');
model.physics('br').selection.set(pm_domains);
model.physics('br').prop('ShapeProperty').set('valueType', {'complex';  ...
'complex';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real';  ...
'real'});
model.physics('br').prop('PhysicalModelProperty').set('TurbulenceModel', 'keps');
model.physics('br').prop('PhysicalModelProperty').set('StokesFlowProp', '0');
model.physics('br').prop('AdvancedSettingProperty').set('locCFL', '1.3^min(niterCMP-1,9)+if(niterCMP>25,9*1.3^min(niterCMP-25,9),0)+if(niterCMP>50,90*1.3^min(niterCMP-50,9),0)');
model.physics('br').prop('ConsistentStabilization').set('CrosswindDiffusionOldFormNS', '1');

% include gravity and use reduced pressure
model.physics('br').prop('PhysicalModelProperty').set('IncludeGravity', true);
model.physics('br').prop('PhysicalModelProperty').set('UseReducedPressure', true);

model.physics('br').feature('fmp1').create('fd1', 'Forchheimer', dimNb);
model.physics('br').feature('fmp1').feature('fd1').selection.set(pm_domains);
model.physics('br').feature('fmp1').feature('fd1').set('betaF', 'bF');
model.physics('br').feature('fmp1').set('editModelInputs', '1');
model.physics('br').feature('fmp1').set('rho', 'rho_flibe(T_flibe)');
model.physics('br').feature('fmp1').set('minput_strainreferencetemperature', '0');
model.physics('br').feature('fmp1').set('kappa', {'0'; '0'; '0'; '0'; '0'; '0'; '0'; '0'; '0'});
model.physics('br').feature('fmp1').label('Fluid and Matrix Properties');
model.physics('br').feature('fmp1').feature('fd1').label('Forchheimer Drag');


%% outlet boundary conditions
% lower(wall) outlet
model.physics('br').create('out1', 'OutletBoundary', dimNb-1);
model.physics('br').feature('out1').selection.set(out_bound1);
model.physics('br').feature('out1').set('BoundaryCondition', 'Pressure');
model.component('mod1').physics('br').feature('out1').set('p0', '0');

%middle outlet 
model.physics('br').create('out2', 'OutletBoundary', dimNb-1);
model.physics('br').feature('out2').selection.set(out_bound2);
model.physics('br').feature('out2').set('BoundaryCondition', 'Pressure');
model.component('mod1').physics('br').feature('out2').set('p0', '0');

% upper outlet
model.physics('br').create('out3', 'OutletBoundary', dimNb-1);
model.physics('br').feature('out3').selection.set(out_bound3);
model.physics('br').feature('out3').set('BoundaryCondition', 'Pressure');
model.component('mod1').physics('br').feature('out3').set('p0', '-0.1*rhoL*g');


%% inlet boundary conditions
% bottom inlet
model.physics('br').create('inl1', 'InletBoundary', dimNb-1);
model.physics('br').feature('inl1').selection.set(in_bound_lower);
model.physics('br').feature('inl1').set('BoundaryCondition', 'MassFlow');
model.physics('br').feature('inl1').set('mfr', 'mL*bottomInletFraction');
model.physics('br').feature('inl1').set('U0in', '0.5');
model.physics('br').feature('inl1').set('IT', '0.05');
model.physics('br').feature('inl1').set('LT', '0.01[m]');
model.physics('br').feature('inl1').set('k0', '0.005[m^2/s^2]');
model.physics('br').feature('inl1').set('ep0', '0.005[m^2/s^3]');
model.physics('br').feature('inl1').set('om0', '20[1/s]');

%----------- center inlet 
model.component('mod1').physics('br').create('inl3', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl3').selection.set(in_bound_center_low);
model.component('mod1').physics('br').feature('inl3').set('U0in', 0.02);

model.component('mod1').physics('br').create('inl6', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl6').selection.set(in_bound_center_curved);
model.component('mod1').physics('br').feature('inl6').set('U0in', 0.05);

% define inlet velocity for boundary condition
model.func.create('an9', 'Analytic');
model.func('an9').label('Inlet Velocity');
model.func('an9').set('args', {'z'});
model.func('an9').set('expr', '(2.85-0.05*(1.75-z)^4)*0.016'); %bottom heavy
%model.func('an9').set('expr', '(3.3-0.45*(2-z)^2)*0.016'); %bottom heavy
%model.func('an9').set('expr', '(2.9-0.1*(2.8-z)^2)*0.015'); %even distribution
model.func('an9').set('plotargs', {'z' '1' '4.5'});
model.func('an9').set('funcname', 'vel_in');

model.physics('br').create('inl2', 'InletBoundary', dimNb-1);
model.physics('br').feature('inl2').selection.set(in_bound_center_straight);
model.component('mod1').physics('br').feature('inl2').set('U0in', 'vel_in(z)');
model.component('mod1').physics('br').feature('inl2').set('mfr', 0.22);
model.component('mod1').physics('br').feature('inl2').set('IT', 0.05);
model.component('mod1').physics('br').feature('inl2').set('LT', '0.01[m]');
model.component('mod1').physics('br').feature('inl2').set('k0', '0.005[m^2/s^2]');
model.component('mod1').physics('br').feature('inl2').set('ep0', '0.005[m^2/s^3]');
model.component('mod1').physics('br').feature('inl2').set('om0', '20[1/s]');
 

% upper inlet 
model.component('mod1').physics('br').create('inl4', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl4').selection.set(in_bound_up_curved);
model.component('mod1').physics('br').feature('inl4').set('U0in', 0.005);

model.component('mod1').physics('br').create('inl5', 'InletBoundary', 2);
model.component('mod1').physics('br').feature('inl5').selection.set(in_bound_up_top);
model.component('mod1').physics('br').feature('inl5').set('U0in', 0.001);


%% wall 
model.physics('br').feature('wall1').set('BoundaryCondition', 'Slip');
model.physics('br').feature('wall1').set('constraintType', 'symmetricConstraint');
model.physics('br').feature('wall1').set('zeta', '-0.1[V]');
model.physics('br').feature('wall1').label('Wall');


%% initial condition
model.physics('br').feature('init1').set('u_init', {'0'; '0'; '0.1'});

model.physics('br').prop('PhysicalModelProperty').set('StokesFlowProp', '0');
