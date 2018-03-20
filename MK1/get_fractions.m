function fractionsN = get_fractions()
%% read fractions into an array
run('MK1\power_fraction_data\serp_full_core_det0.m');
burnup = [1 5 2 6 3 7 4 8];
for i = 1:8
    det = eval(['DET', num2str(i)]);
    fracw(burnup(i)) = det(11);
end


for i = 1:8
    det = eval(['DET', num2str(i+8)]);
    fraca(burnup(i)) = det(11);
end



fractionsN = 8*fraca/sum(fraca);
% bar_plot(fractionsN);

end
function bar_fig = bar_plot(fractionsN)

figure;
bar(1:8, fractionsN);
title('Fraction of power in each batch of pebbles');
xlabel('Burnup number');
ylabel('Power fraction(normalized)');
saveas(gcf,'power_barchart.png')
end
