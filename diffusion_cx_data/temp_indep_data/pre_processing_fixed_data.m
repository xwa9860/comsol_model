%% This file writes fixed cross sections in diffusion model to txt files that can
% be then imported in comsol.

%turn the matrices to matlab matrices
unverses = GC_UNIVERSE_NAME;
unb=4; %universe number in the serpent output file 
univ_list = {'graphiteU', 'pebbleU', 'dispPebbleU', 'flibeU'};     
gnb=8; %energy group number
fuelUniv=2;% universe number for fuel

foldername = 'diffusion_cx_data/temp_indep_data/';
%% kappa
for u=1:unb
    filename = [foldername, cell2mat(univ_list(u)),'.txt'];
    fileID = fopen(filename, 'wt');
    for i=1:gnb
        k=i*2-1;
        eval(['kappa' num2str(u) '(i)=INF_KAPPA(u, k);']);
        fprintf(fileID, ...
            ['kappa', num2str(i), ' ', ...
            num2str(eval(['kappa' num2str(u) '(i)' ])), '[MeV]\n']);
    end   
end

%% diffusion coefficient array[n*1]
for u=1:unb
    filename = [foldername, cell2mat(univ_list(u)),'.txt'];
    fileID = fopen(filename, 'at');
    for i=1:gnb
        k=i*2-1;
        eval(['diffArr' num2str(u) '(i)=INF_DIFFCOEF(u, k);']);
        fprintf(fileID, ...
            ['c', num2str(i), ' ', ...
            num2str(eval(['diffArr' num2str(u) '(i)' ])), '[cm]\n']);
    end  
end

%% Inverse neutron velocity vector [n*1]
for u=1:unb
    filename = [foldername, cell2mat(univ_list(u)),'.txt'];
    fileID = fopen(filename, 'at');
    for i=1:gnb
        k=i*2-1;
        eval(['invV' num2str(u) '(i)=INF_INVV(u, k);']);
        fprintf(fileID, ...
            ['invV', num2str(i),' ', ...
            num2str(eval(['invV' num2str(u) '(i)' ])), '[s/cm]\n']);
    end
    
end


%% Total scattering production cross sections[n*n] from INF_S0
for u=1:unb %universe number
    filename = [foldername, cell2mat(univ_list(u)),'.txt'];
    fileID = fopen(filename, 'at');
    for i = 0:gnb-1 
        for j=1:gnb 
            k=i*gnb*2 + j*2-1;
            scatMat(u, j, i+1)=INF_S0(u, k);                  
        end
    end
    for i = 0:gnb-1 
        for j=1:gnb 
         fprintf(fileID, ...
                ['scat', num2str(i+1), num2str(j),' ', ...
                num2str(scatMat(u, i+1, j)), '[1/cm]\n']);
        end
    end
end

%% Removal array[n*1] from INF_REMXS
for u=1:unb
    filename = [foldername, cell2mat(univ_list(u)),'.txt'];
    fileID = fopen(filename, 'at');
    for i=1:gnb
        k=i*2-1;
        eval(['removeArr' num2str(u) '(i)=INF_REMXS(u, k);']);
        fprintf(fileID, ...
            ['rmv', num2str(i),' ', ...
            num2str(eval(['removeArr' num2str(u) '(i)' ])), '[1/cm]\n']);
    end
end

%% (total) chit array[n*1] from INF_CHIT
for u=1:unb
    for i=1:gnb
        k=i*2-1;
        eval(['chiArr' num2str(u) '(i)=INF_CHIT(u, k);']);
    end
end

%% nsf array [n*1] from INF_NSF
for u=1:unb
    for i=1:gnb
        k=i*2-1;
        eval(['nsfArr' num2str(u) '(i)=INF_NSF(u, k);']);
    end
end

%% fission production matrix = chit'*nsf
% fisMat(i, j) = chi(i)*nsf(j)
for u=1:unb
    filename = [foldername, cell2mat(univ_list(u)),'.txt'];
    fileID = fopen(filename, 'at');
    for i = 1:gnb 
        for j=1:gnb 
            eval(['fisMat' num2str(u) '(i,j)=chiArr' num2str(u) '(i)*nsfArr' num2str(u) '(j);']);               
        end
    end
    for i =1:gnb
        for j=1:gnb
            fprintf(fileID, ...
            ['fis', num2str(i), num2str(j),' ', ...
            num2str(eval(['fisMat' num2str(u) '(i, j)' ])), '[1/cm]\n']);
        end
    end
end



