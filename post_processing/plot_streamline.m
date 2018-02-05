function model = plot_streamline(model)

global plotNb
% https://www.mathworks.com/matlabcentral/answers/99602-how-can-i-use-global-variables-and-matlab-workspaces
if ~isempty(plotNb)
    plotNb = plotNb + 1;
else
    plotNb = mphglobal(model, 'plotNb')+1;
end
    
model.param.set('plotNb', plotNb);

name = ['pg', num2str(plotNb)];    
model.result.create(name, 'PlotGroup2D');
res =  model.result(name);
res.set('data', 'cpl1');
res.label('Flow field');
res.set('titletype', 'manual');
res.set('title', 'Streamline: Velocity field and Contour: Pressure(mFlibe)');

res.create('str1', 'Streamline');
res.create('con1', 'Contour');
%
str = res.feature('str1');
str.create('col1', 'Color');
str.set('planecoordsys', 'cartesian');
str.set('showzexpr', true);
str.set('expr', {'u' 'v' 'w'});
str.set('posmethod', 'magnitude');
str.set('resolution', 'normal');

con = res.feature('con1');
con.set('expr', 'p/1900/9.81');
con.set('unit', 'Pa');
con.set('descr', 'p/1900/9.81');
con.set('number', 50);
con.set('coloring', 'uniform');
con.set('color', 'black');
con.set('resolution', 'normal');

export_image(model, name, 'Flowfield', name, 'steamlines', 2)
end
