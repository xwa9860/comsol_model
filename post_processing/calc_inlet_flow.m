function model = clac_inlet_flow(model, inlet_bound, table)
%% evaluate mass flow rate at inlets
global intNb
% https://www.mathworks.com/matlabcentral/answers/99602-how-can-i-use-global-variables-and-matlab-workspaces
if ~isempty(intNb)
    intNb = intNb + 1;
else
    intNb = mphglobal(model, 'intNb');
end
%this_plot_nb = intNb;

model.param.set('intNb', intNb);
name = ['int', num2str(intNb)];
    
model.result.numerical.create(name, 'IntSurface');
model.result.numerical(name).set('data', 'dset2');
model.result.numerical(name).selection.set(inlet_bound);
model.result.numerical(name).set('probetag', 'none');

model.result.numerical(name).label(['center inlet mass flow rate', name]);
model.result.numerical(name).set('table', table);
model.result.numerical(name).set('expr', {'(u*nx+v*ny+w*nz)*rhoL'});
model.result.numerical(name).set('unit', {'kg/s'});
model.result.numerical(name).set('descr', {''});
model.result.numerical(name).setResult;