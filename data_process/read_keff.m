function keff = read_keff(file_name)
% read keff from serpent res file
 run(file_name);
 keff = IMP_KEFF(1);
