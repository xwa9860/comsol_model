function cfeq = set_matrix_da(cfeq, triso_layer_nb, pb_region, ...
    rho_triso, cp_triso, rho_gr, cp_gr, rho_fuel, cp_fuel )

global reactor

%% set matrix da
k=0;
for n=1:pb_region
    if n<pb_region
        switch reactor
            case 'TMSR'
                
                for i=1:triso_layer_nb
                    for j=1:triso_layer_nb
                        if i==j && j<triso_layer_nb
                            cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_fuel'],k);
                            k=k+3*triso_layer_nb+2;
                        elseif i==j && j==triso_layer_nb
                            cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_coat'],k);
                            k=k+3*triso_layer_nb+2;
                        else
                            cfeq.setIndex('da',num2str(0),k);
                        end
                    end
                end
                
            case 'Mk1'
                if n==1
                    cfeq.setIndex('da',['eigenMode*', num2str(rho_gr), '*', num2str(cp_gr), '*V_graphite_core'],k);
                    k=k+triso_layer_nb+pb_region;
                else
                    for i=1:triso_layer_nb
                        for j=1:triso_layer_nb
                            if i==j && j<triso_layer_nb
                                cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_fuel'],k);
                                k=k+triso_layer_nb+pb_region;
                            elseif i==j && j==triso_layer_nb
                                cfeq.setIndex('da',['eigenMode*',num2str(rho_triso(i)),'*',num2str(cp_triso(i)),'*V_coat'],k);
                                k=k+triso_layer_nb+pb_region;
                            else
                                cfeq.setIndex('da',num2str(0),k);
                            end
                        end
                    end
                end
                
        end
        
    else
        for i=1:1
            for j=1:1
                cfeq.setIndex('da',['eigenMode*', num2str(rho_gr), '*', num2str(cp_fuel), '*V_graphite_shell'],k);
                switch reactor
                    case 'TMSR'
                        k=k+3*triso_layer_nb+2;
                    case 'Mk1'
                        k=k+triso_layer_nb+pb_region;
                end
            end
        end
    end
end
end