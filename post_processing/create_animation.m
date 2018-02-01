function model = create_animation(model, plot_label, saveToFile)
% create the animation
    
    % check if there is already an animNb and increment as we add more
    % animation, otherwise create one
    global animNb
    % https://www.mathworks.com/matlabcentral/answers/99602-how-can-i-use-global-variables-and-matlab-workspaces
    if ~isempty(animNb)
        animNb = animNb + 1;
    else
        animNb = mphglobal(model, 'animNb')+1;
    end
    this_plot_nb = animNb;
    
    model.param.set('animNb', animNb);
    name = ['anim', num2str(animNb)];
    
    model.result.export.create(name, 'Animation');
    anim = model.result.export(name);
    anim.set('plotgroup', plot_label);
    anim.set('giffilename', saveToFile);
    anim.set('fps', 1);
    anim.set('solnumtype', 'level1');
    anim.set('maxframes', 20);
    anim.set('title', 'on');
    anim.set('legend', 'on');
    anim.set('logo', 'on');
    anim.set('options', 'on');
    anim.set('fontsize', '9');
    anim.set('customcolor', [1 1 1]);
    anim.set('background', 'color');
    anim.set('axisorientation', 'on');
    anim.set('grid', 'on');
    anim.set('axes', 'on');
    anim.set('showgrid', 'on');

end