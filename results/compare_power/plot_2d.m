function res = plot_image(R, Z, power, figtitle, saveto, plim)
    
    figure;
    %mesh(r, z, power+0.001); % tried to use surf or mesh plot, the figure
    %doesn't look good, so using image now.
    %hold on;
    image(R, Z, power, 'CDataMapping', 'scaled');
    
    title(figtitle);
    if plim
        caxis([0 plim])
    end
    colormap(jet);
    hcb=colorbar;
    %title(hcb,'Normalized power density');
    fig = gcf;
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 3 6];
    set(gca,'YDir','normal') % this can be confusing, but 'image' function
    % uses 'reverse' ydirection, by setting it to normal flips the y axis
    % direction. So the height of the reactor is properly shown.
    folder_name = '';
    saveas(gcf,[folder_name, saveto]);
    %hold off;