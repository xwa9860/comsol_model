function model = create_3d_eigen_results(model, output_path)
    model.result.dataset.create('cpl1', 'CutPlane');
    model.result.dataset('cpl1').set('data', 'dset1');
    model.result.dataset('dset1').set('solution', 'sol16');


    %% export power density on a mesh
    model.result.export.create('data1', 'Data');
    model.result.export('data1').set('data', 'cpl1');
    model.result.export('data1').set('filename', '''sfd''');
    model.result.export('data1').set('location', 'grid');
    model.result.export('data1').set('gridstruct', 'spreadsheet');


    model.result.export('data1').remove('unit', 1);
    model.result.export('data1').remove('descr', 1);
    model.result.export('data1').remove('expr', 1);
    model.result.export('data1').remove('unit', 0);
    model.result.export('data1').remove('descr', 0);
    model.result.export('data1').remove('expr', 0);
    model.result.export('data1').setIndex('expr', 'PdensityN', 0);
    model.result.export('data1').set('location', 'grid');
    model.result.export('data1').set('header', 'on');

    %R = 0.005:0.01:1.775; % center of the bins
    %Z = 0.415:0.01:5.725; %
    model.result.export('data1').set('gridx2', 'range(2.5[cm], 5[cm],175.5[cm])');
    model.result.export('data1').set('gridy2', 'range(48[cm],14[cm],566[cm])');
    model.result.export('data1').set('filename', '1st_eig_power_mesh.txt');

    model.result.export('data1').run;