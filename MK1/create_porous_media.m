pm_domains = "[6 7 8 9 11]";
model.physics.create('br', 'Brinkman', 'geom1');
% model.physics('br').selection.set([6 7 8 9 11]);
% model.physics('br').feature('fmp1').create('fd1', 'Forchheimer', dimNb);
% model.physics('br').feature('fmp1').feature('fd1').selection.set(pm_domains);
% model.physics('br').create('fmp2', 'FluidAndMatrixProperties', 2);
% 
% model.physics('br').create('out1', 'Outlet', 1);
% model.physics('br').feature('out1').selection.set([7,6]);
% model.physics('br').create('inl2', 'Inlet', 1);
% model.physics('br').feature('inl2').selection.set([7]);
% model.physics('br').create('inl3', 'Inlet', 1);
% model.physics('br').feature('inl3').selection.set([7]);
% 
% model.physics('br').create('vf1', 'VolumeForce', 3);
% model.physics('br').feature('vf1').selection.set(pm_domains);
% 
% 
% model.physics('br').create('inl4', 'Inlet', 1);
% model.physics('br').feature('inl4').selection.set([10]);
% model.physics('br').create('inl5', 'Inlet', 1);
% model.physics('br').feature('inl5').selection.set([22]);
