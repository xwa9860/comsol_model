function model = create_a_surf_plot(model, dataset, expr, label, unit, descr, title)
    % give the plot a name in form of 'pg' + an incremental number,
    % this number is made global, so it's alway incremented whenever
    % this function is called.
    
    % Check number of inputs.
    if nargin > 7
        error('create_a_surf_plot:TooManyInputs', ...
            'requires at most 3 optional inputs');
    end
    
    
    plotNb = mphglobal(model, 'plotNb')+1;
    model.param.set('plotNb', plot_nb);
    name = ['pg', num2str(plotNb)];
    
    model.result.create(name, 'PlotGroup2D');
    res =  model.result(name);
    res.set('data', dataset);
    res.label(label);
    res.create('surf1', 'Surface');
    surf = res.feature('surf1');
    surf.set('expr', expr);
    
    if nargin > 4
         surf.set('unit', unit);
    end
    
    if nargin > 5
         surf.set('descr', descr);
    end
    
    if nargin > 6
        surf.set('titletype', 'manual');
        surf.set('title', title);
    end
    
    surf.set('resolution', 'normal');
    
end