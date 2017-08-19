# read serpent input file  and change the fuel temperature
temp_ids = ['12', '06']
for temp_id in temp_ids:
    for pb_id in range(1, 4):
        for triso_id in range(1, 4):
            print pb_id
            print triso_id
            fuel_id = str(10*pb_id+triso_id)
            print fuel_id
            lib_to_replace = ''.join([temp_id, 'c'])

            new_file_name = '_'.join(('tmsr_sf1', fuel_id, temp_id))
            print new_file_name

            f2 = open(new_file_name, 'w')
            with open('tmsr_sf1', 'r') as f:
                for line in f:
                    if ''.join(('mat fuel', fuel_id)) in line:
                        f2.write(line)
                        for i in range(4):
                            isotope_line = f.next()
                            f2.write(isotope_line.replace('09c', lib_to_replace))
                    else:
                        f2.write(line)
            f2.close()
            f.close()
