# divide triso particles in a pebble into three layers according to their
# location


import numpy as np
import pandas as pd
df_pos = pd.read_csv('part1_11558.csv',
                     names=['x', 'y', 'z', 'size', 'type'])

def loc(x):
    return np.sqrt(x[0]**2+x[1]**2+x[2]**2)

# loc is r**2
df_pos['loc'] = df_pos.apply(loc, axis=1)

df_pos['categories'] = pd.cut(df_pos['loc'],
                              [0, 1.715, 2.15, 2.5],
                              labels=['1', '2', '3'])
print pd.value_counts(df_pos['categories'])
print df_pos[0:10]

df_pos_new = df_pos[['x', 'y', 'z', 'size', 'categories']]
print df_pos_new[0:10]

df_pos_new.to_csv('part1_11558.inp', sep=' ', header=False, index=False)
