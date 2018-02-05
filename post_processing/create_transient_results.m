function model = create_transient_results(model)


model.result.dataset('dset4').set('solution', 'sol4');
%dset4: transient study results

model.result.dataset.create('rev1', 'Revolve2D');
model.result.dataset('rev1').set('data', 'dset4');
model.result.dataset('rev1').label('Revolution 2D');
model.result.dataset('rev1').set('startangle', -90);
model.result.dataset('rev1').set('revangle', 225);

[model, flibe_3d_nb] = plot_surf(model, 'rev1', 'T_flibe', 3, 'T_flibe', 'degC', 'flibe temperature');
[model, fuel_3d_nb] = plot_surf(model, 'rev1', 'Tp11', 3, 'Tp11', 'degC', 'fuel temperature');
saveToFile = 'flibe_temp.gif';
model = create_animation(model, ['pg', num2str(flibe_3d_nb)], saveToFile);
saveToFile = 'fuel_temp.gif';
model = create_animation(model, ['pg', num2str(fuel_3d_nb)], saveToFile);

end