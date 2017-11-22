function res = plot_2d(R, Z, power, figtitle, saveto, plim)
    
    figure;
    
    %% plot surface plot
    %mesh(r, z, power+0.001); % tried to use surf or mesh plot, the figure
    %doesn't look good, so using image now.
    image(R, Z, power, 'CDataMapping', 'scaled');
    hold on;
    
    %% add verticle lines for radial zones
    ystart = 0;
    yend = 6;
    xzones = [0.35, 0.461, 0.583, 0.96, 1.05];
    for idx = 1 : numel(xzones)
        plot([xzones(idx), xzones(idx)], [ystart, yend], 'k');
    end
    
    %% title, axis, ... settings
    xlabel('R[m]');
    ylabel('Z[m]');
    title(figtitle);
    if plim
        caxis([0 plim])
    end
    
    colormap(jet);
    hcb=colorbar;
    %title(hcb,'Normalized power density');
    fig = gcf;
    fig.PaperUnits = 'inches';
    fig.PaperPosition = [0 0 4 6]; % size is 4*6
    set(gca,'YDir','normal') % this can be confusing, but 'image' function
    % uses 'reverse' ydirection, by setting it to normal flips the y axis
    % direction. So the height of the reactor is properly shown.
    folder_name = '';
    saveas(gcf,[folder_name, saveto]);
    hold off;