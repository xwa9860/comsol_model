function model = create_a_surf_plot(model, dataset, expr, label)
    % give the plot a name in form of 'pg' + an incremental number,
    % this number is made global, so it's alway incremented whenever
    % this function is called.
    global plotNb
    
    if plotNb
        plotNb = plotNb + 1;
    else
        plotNb = 1;
    end
    name = ['pg', num2str(plotNb)];
    
    model.result.create(name, 'PlotGroup2D');
    model.result(name).set('data', dataset);
    model.result(name).create('surf1', 'Surface');
    model.result(name).feature('surf1').set('expr', expr);
    model.result(name).label(label);
end