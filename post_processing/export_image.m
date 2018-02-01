function model = export_image(model, image_name, label, ...
    pg_name, filename, image_dim)
    if image_dim == 1
        model.result.export.create(image_name, 'Image1D');
    else    
        model.result.export.create(image_name, 'Image2D');
    end
    img = model.result.export(image_name);
    img.label(label);
    img.set('plotgroup', pg_name);
    img.set('printlockratio', false);
    img.set('pngfilename', filename);
    
    img.set('printunit', 'mm');
    img.set('webunit', 'px');
    img.set('printheight', '90');
    img.set('webheight', '600');
    img.set('printwidth', '120');
    img.set('webwidth', '800');
    img.set('printlockratio', 'off');
    img.set('weblockratio', 'off');
    img.set('printresolution', '300');
    img.set('webresolution', '96');
    img.set('size', 'manualprint');
    img.set('antialias', 'on');
    img.set('zoomextents', 'off');
    
    img.set('title', 'on');
    img.set('legend', 'on');
    img.set('logo', 'off');
    
    img.set('options', 'on');
    img.set('fontsize', '9');
    img.set('customcolor', [1 1 1]);
    img.set('background', 'current');
    img.set('axes', 'on');
    img.set('qualitylevel', '92');
    img.set('qualityactive', 'off');
    img.set('imagetype', 'png');
end