# plot the center inlet boundary condition
import matplotlib.pyplot as plt
import numpy as np


def f1(x):
    # bottom heavy inlet
    if x < 4.305 and x > 1.4482:
        return (3.3-0.45*(2-x)**2)*0.016
    if x<1.4482:
        return 0.04
    if x>4.305 and x<4.925:
        return 0.01
    if x>4.925 and x<5.7285:
        return 0.005
    return 0

f1 = np.vectorize(f1)

def f2(x):
    # evenly distributed inlet
    if x<4.305 and x>1.4482:
        return (2.9-0.1*(2.8-x)**2)*0.015
    if x<1.4482:
        return 0.04
    if x>4.305 and x<4.925:
        return 0.01
    if x>4.925 and x<5.7285:
        return 0.005
    return 0
f2 = np.vectorize(f2)

x = np.arange(0, 5.8, 0.1)
plt.figure()
plt.subplot(121)
plt.plot(f1(x), x, '.')
plt.ylabel('Height (m)')
plt.subplot(122)
plt.plot(f2(x), x, '.')
plt.ylabel('Height (m)')
plt.xlabel('Inlet velocity (m/s)')
plt.show()
