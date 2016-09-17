mname = mfilename;
mydir = which(mname); mydir = mydir(1:end-2-numel(mname));
addpath(mydir(1:end-1));
addpath([mydir, 'diffusion_cx_data'])
addpath([mydir, 'diffusion_cx_data/temp_dep_data'])
addpath([mydir, 'build_model'])

clear mydir mname