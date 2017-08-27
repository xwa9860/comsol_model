% define inlet velocity for boundary condition
% model.func.create('an9', 'Analytic');
% model.func('an9').label('Inlet Velocity');
% model.func('an9').set('args', {'z' 'z0'});
% model.func('an9').set('expr', '(1-bottomInletFraction)/0.54*0.06*(z^2 - z0)');
% model.func('an9').set('plotargs', {'z' '0' '1'; 'z0' '0' '1'});
% model.func('an9').set('funcname', 'vel_in');

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

model.physics('br').feature('fmp1').create('fd1', 'Forchheimer', dimNb);
model.physics('br').feature('fmp1').feature('fd1').selection.set(pm_domains);
model.physics('br').feature('fmp1').feature('fd1').set('betaF', 'bF');
model.physics('br').feature('fmp1').set('editModelInputs', '1');
model.physics('br').feature('fmp1').set('rho', 'rho_flibe(T_flibe)');
model.physics('br').feature('fmp1').set('minput_strainreferencetemperature', '0');
model.physics('br').feature('fmp1').set('kappa', {'0'; '0'; '0'; '0'; '0'; '0'; '0'; '0'; '0'});
model.physics('br').feature('fmp1').label('Fluid and Matrix Properties');
model.physics('br').feature('fmp1').feature('fd1').label('Forchheimer Drag');

% lower(wall) outlet
model.physics('br').create('out1', 'OutletBoundary', dimNb-1);
model.physics('br').feature('out1').selection.set(out_bound1);
model.physics('br').feature('out1').set('BoundaryCondition', 'Pressure');
model.component('mod1').physics('br').feature('out1').set('p0', '0.1*rhoL*g');

% upper outlet
model.physics('br').create('out2', 'OutletBoundary', dimNb-1);
model.physics('br').feature('out2').selection.set(out_bound2);
model.physics('br').feature('out2').set('BoundaryCondition', 'Pressure');
model.component('mod1').physics('br').feature('out2').set('p0', '0*rhoL*g');

model.physics('br').create('inl2', 'InletBoundary', dimNb-1);
model.physics('br').feature('inl2').selection.set(in_bound1);
model.physics('br').feature('inl2').set('BoundaryCondition', 'MassFlow');
model.physics('br').feature('inl2').set('mfr', 'mL*(1-bottomInletFraction)');
model.physics('br').feature('inl2').set('U0in', '0.5');
model.physics('br').feature('inl2').set('IT', '0.05');
model.physics('br').feature('inl2').set('LT', '0.01[m]');
model.physics('br').feature('inl2').set('k0', '0.005[m^2/s^2]');
model.physics('br').feature('inl2').set('ep0', '0.005[m^2/s^3]');
model.physics('br').feature('inl2').set('om0', '20[1/s]');

model.physics('br').create('inl3', 'InletBoundary', dimNb-1);
model.physics('br').feature('inl3').selection.set(in_bound2);
model.physics('br').feature('inl3').set('BoundaryCondition', 'MassFlow');
model.physics('br').feature('inl3').set('mfr', 'mL*bottomInletFraction');
model.physics('br').feature('inl3').set('U0in', '0.5');
model.physics('br').feature('inl3').set('IT', '0.05');
model.physics('br').feature('inl3').set('LT', '0.01[m]');
model.physics('br').feature('inl3').set('k0', '0.005[m^2/s^2]');
model.physics('br').feature('inl3').set('ep0', '0.005[m^2/s^3]');
model.physics('br').feature('inl3').set('om0', '20[1/s]');

model.physics('br').feature('wall1').set('BoundaryCondition', 'Slip');
model.physics('br').feature('wall1').set('constraintType', 'symmetricConstraint');
model.physics('br').feature('wall1').set('zeta', '-0.1[V]');
model.physics('br').feature('wall1').label('Wall');


model.physics('br').feature('init1').set('u_init', {'0'; '0'; '0'});

model.physics('br').prop('PhysicalModelProperty').set('StokesFlowProp', '0');
