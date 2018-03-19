
mname = mfilename;
mydir = which(mname); mydir = mydir(1:end-2-numel(mname));

addpath(mydir(1:end-1));

addpath([mydir, 'build_model'])
addpath([mydir, 'build_model\neutronics'])
addpath([mydir, 'build_model\therm'])
addpath([mydir, 'build_model\therm\ht_fuel'])
addpath([mydir, 'data_process'])
addpath([mydir, 'utilities'])
addpath([mydir, 'solvers'])
addpath([mydir, 'post_processing'])
addpath([mydir, 'tests'])
addpath([mydir, 'results'])
% 
addpath([mydir, 'MK1\'])
addpath([mydir, 'MK1\XS_data'])
addpath([mydir, 'MK1\XS_data_rod'])
addpath([mydir, 'MK1\power_fraction_data'])
% addpath([mydir, 'TMSR'])
% addpath([mydir, 'TMSR\XS_data'])

clear mydir mname

format long e;
format longEng;