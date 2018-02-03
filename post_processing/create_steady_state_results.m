global isMultiScale;
global pebbles_region region_fuel_kernel region_coated;

model.result.dataset('dset2').set('solution', 'sol13');
% dset2 is the steady state results

%% plot
temp_unit = 'degC'; % using celsius to plot temperature
model = plot_surf(model, 'dset2', 'T_fuel', 2, 'T_fuel(steady_state)', temp_unit);


model = plot_surf(model, 'dset2', 'T_flibe', 2, 'T_flibe(steady_state)', temp_unit);


model = plot_surf(model, 'dset2', 'Pdensity', 2, 'Pdensity(steady_state)');

if isMultiScale
    % Tp11-44 plot
    for i =1:pebbles_region-1
        for j = 1:(region_fuel_kernel+region_coated)
            model = plot_surf(model, 'dset2', ['Tp',num2str(i),num2str(j)], 2, ['Tp',num2str(i),num2str(j),'(steady_state)'], temp_unit);
        end
    end
    %Tp44
    model = plot_surf(model, 'dset2', 'Tp44', 2, 'Tp44(steady_state)', temp_unit);
end

if ~isTMSR
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


    % output the power profile on a mesh grid
    %R = 0.005:0.01:1.775; % center of the bins
    %Z = 0.415:0.01:5.725; %
    model.result.export('data1').set('gridx2', 'range(0.5[cm], 1[cm],177.5[cm])');
    model.result.export('data1').set('gridy2', 'range(41,5[cm],1[cm],572.5[cm])');
    model.result.export('data1').set('filename', 'power_mesh.txt');
    
    model.result.export('data1').run;
end
