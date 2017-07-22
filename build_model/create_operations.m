% create operations
model.cpl.create('intop1', 'Integration', 'geom1');
model.cpl.create('aveop1', 'Average', 'geom1');
model.cpl('intop1').selection.set(domains('fuel'));
model.cpl('aveop1').selection.set(domains('fuel'));
model.cpl('intop1').set('axisym', true);