function model = plot_histogram(model)

global plotNb
% https://www.mathworks.com/matlabcentral/answers/99602-how-can-i-use-global-variables-and-matlab-workspaces
if ~isempty(plotNb)
    plotNb = plotNb + 1;
else
    plotNb = mphglobal(model, 'plotNb')+1;
end
    
model.param.set('plotNb', plotNb);

name = ['pg', num2str(plotNb)];   
model.result.create(name, 'PlotGroup1D');

res =  model.result(name);
res.create('hist1', 'Histogram');
res.set('data', 'surf1');
res.set('xlabel', 'Temperature (degC)');
res.set('ylabel', 'Relative area');
res.set('xlabelactive', false);
res.set('ylabelactive', false);

hist = res.feature('hist1');

hist.set('expr', 'T_flibe');
hist.set('unit', 'degC');
hist.set('descr', 'Temperature');
hist.set('number', 50);
hist.set('function', 'discrete');
hist.set('normalization', 'integral');
hist.set('resolution', 'normal');

export_image(model, name, 'hist', name, 'hist', 1)
end