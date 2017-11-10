% create operations
model.cpl.create('intop1', 'Integration', 'geom1');
model.cpl('intop1').selection.set(fuel_domNb);
model.cpl('intop1').set('axisym', true); % ? is this true in 3D?

model.cpl.create('aveop1', 'Average', 'geom1');
model.cpl('aveop1').selection.set(fuel_domNb);
