%% read fractions into an array
run('serp_full_core_det0.m');
burnup = [1 5 2 6 3 7 4 8];
for i = 1:8
    det = eval(['DET', num2str(i)]);
    fracw(burnup(i)) = det(11);
end
fracw

bar_plot(fracw);

for i = 1:8
    det = eval(['DET', num2str(i+8)]);
    fraca(burnup(i)) = det(11);
end
fraca

bar_plot(fraca);

function bar_fig = bar_plot(fractions)
fractionsN = fractions/fractions(1);
figure;
bar(1:8, fractionsN);
title('Fraction of power in each batch of pebbles');
xlabel('Burnup number');
ylabel('Power fraction(normalized)');
saveas(gcf,'power_barchart.png')
end

