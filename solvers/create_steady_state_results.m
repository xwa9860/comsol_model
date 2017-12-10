model.result.dataset('dset2').set('solution', 'sol13');
% dset2 is the steady state results
model.result.dataset('dset3').set('solution', 'sol15');
% dset3: scaling study results
%% plot


model = create_a_surf_plot(model, 'dset2', 'T_fuel', 'T_fuel(steady state)');


model = create_a_surf_plot(model, 'dset2', 'T_flibe', 'T_flibe(steady state)');


model = create_a_surf_plot(model, 'dset2', 'Pdensity', 'Pdensity(steady state)');


%fast flux surface plot
model = create_a_surf_plot(model, 'dset3', 'FluxN1+FluxN2+FluxN3+FluxN4', 'fast flux(steady state)');


% thermal flux surface plot
model = create_a_surf_plot(model, 'dset3', 'FluxN5+FluxN6+FluxN7+FluxN8', 'thermal flux(steady state)');


% Tp11-44 plot
for i =1:pebbles_region-1
    for j = 1:(region_fuel_kernel+region_coated)
        model = create_a_surf_plot(model, 'dset2', ['Tp',num2str(i),num2str(j)], ['Tp',num2str(i),num2str(j),'(steady state)']);
    end
end
%Tp44
model = create_a_surf_plot(model, 'dset2', 'Tp44', 'Tp44(steady state)');


%% export power density on a mesh
model.result.export.create('data1', 'Data');
model.result.export('data1').set('data', 'dset2');
model.result.export('data1').remove('unit', 1);
model.result.export('data1').remove('descr', 1);
model.result.export('data1').remove('expr', 1);
model.result.export('data1').remove('unit', 0);
model.result.export('data1').remove('descr', 0);
model.result.export('data1').remove('expr', 0);
model.result.export('data1').setIndex('expr', 'Pdensity', 0);
model.result.export('data1').set('location', 'grid');
model.result.export('data1').set('header', 'on');

if ~isTMSR
    %R = 0.005:0.01:1.775; % center of the bins
    %Z = 0.415:0.01:5.725; %
    model.result.export('data1').set('gridx2', 'range(0.5[cm], 1[cm],177.5[cm])');
    model.result.export('data1').set('gridy2', 'range(41,5[cm],1[cm],572.5[cm])');
    model.result.export('data1').set('filename', 'power_mesh.txt');
    
    model.result.export('data1').run;
end
