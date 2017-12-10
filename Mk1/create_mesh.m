model.mesh.create('mesh1', 'geom1');
model.mesh('mesh1').autoMeshSize(7);% coarser

model.component('mod1').mesh('mesh1').create('ftet2', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet3', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet4', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet6', 'FreeTet');
model.component('mod1').mesh('mesh1').create('ftet5', 'FreeTet');
model.component('mod1').mesh('mesh1').feature('ftet2').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet2').selection.set([1 2]);
model.component('mod1').mesh('mesh1').feature('ftet2').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet3').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet3').selection.set([11]);
model.component('mod1').mesh('mesh1').feature('ftet3').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet4').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet4').selection.set([3]);
model.component('mod1').mesh('mesh1').feature('ftet4').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet6').selection.geom('geom1', 3);
model.component('mod1').mesh('mesh1').feature('ftet6').selection.set([9]);
model.component('mod1').mesh('mesh1').feature('ftet6').create('size1', 'Size');
model.component('mod1').mesh('mesh1').feature('ftet5').create('size1', 'Size');

model.component('mod1').mesh('mesh1').feature('size').set('hauto', 7);
model.component('mod1').mesh('mesh1').feature('ftet3').feature('size1').set('hauto', 4);
model.component('mod1').mesh('mesh1').feature('ftet4').feature('size1').set('hauto', 6);
model.component('mod1').mesh('mesh1').feature('ftet6').feature('size1').set('hauto', 4);
model.component('mod1').mesh('mesh1').feature('ftet5').feature('size1').set('hauto', 7);
model.component('mod1').mesh('mesh1').run;