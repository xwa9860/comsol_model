
function res = plot_1d(plots, flag, figtitle, saveTo, legends)
%{
 plots: struct array with fields
         name
         x
         y
 flag: whether it's radial or axial
%}
    figure;
    fig = gcf;
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 6 3];
    
    num_plots = numel(plots);
    hold on;
    for p = 1:num_plots
        stairs(plots(p).X, plots(p).Y)
    end
    hold off;
    
    title(figtitle);
    if strcmp(flag, 'Radial')
        xlabel('Radius(m)');
    else
    xlabel('Height(m)');
    end
    ylabel('power density(normalized)');
    legend(legends);
    print(saveTo,'-dpng','-r0');

end