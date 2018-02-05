function [model, this_plot_nb] = plot_surf(model, dataset, expr, plotDim, label, unit, descr, title)
    % give the plot a name in form of 'pg' + an incremental number,
    % this number is made global, so it's alway incremented whenever
    % this function is called.
    
    % Check number of inputs.
    if nargin > 8
        error('create_a_surf_plot:TooManyInputs', ...
            'requires at most 3 optional inputs');
    end
    
    global plotNb
    % https://www.mathworks.com/matlabcentral/answers/99602-how-can-i-use-global-variables-and-matlab-workspaces
    if ~isempty(plotNb)
        plotNb = plotNb + 1;
    else
        plotNb = mphglobal(model, 'plotNb')+1;
    end
    this_plot_nb = plotNb;
    
    model.param.set('plotNb', plotNb);
    name = ['pg', num2str(plotNb)];
    
    if plotDim == 2
        model.result.create(name, 'PlotGroup2D');
        model.result(name).set('data', dataset);
    else
        model.result.create(name, 'PlotGroup3D');
        model.result(name).set('data', dataset);
    end
    res =  model.result(name);
    res.label(label);
    res.create('surf1', 'Surface');
    surf = res.feature('surf1');
    surf.set('expr', expr);
    
    if nargin > 5
         surf.set('unit', unit);
    end
    
    if nargin > 6
         surf.set('descr', descr);
    end
   
    if nargin > 7
        surf.set('titletype', 'manual');
        surf.set('title', title);
    end
    
    surf.set('resolution', 'normal');
    if plotDim==2
    model = export_image(model, name, label, name, label, 2);
    end
end