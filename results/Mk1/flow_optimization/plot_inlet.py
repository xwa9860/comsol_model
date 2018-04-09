# plot the center inlet boundary condition
import matplotlib.pyplot as plt
import numpy as np


def f1(x):
    # bottom heavy inlet
    if x < 4.305 and x > 1.4482:
        return (3.3-0.45*(2-x)**2)*0.016
    if x < 1.4482:
        return 0.04
    if x > 4.305 and x < 4.925:
        return 0.01
    if x > 4.925 and x < 5.7285:
        return 0.005
    return 0
f1 = np.vectorize(f1)


def f2(x):
    # evenly distributed inlet
    if x < 4.305 and x > 1.4482:
        return (2.9-0.1*(2.8-x)**2)*0.015
    if x < 1.4482:
        return 0.04
    if x > 4.305 and x < 4.925:
        return 0.01
    if x > 4.925 and x < 5.7285:
        return 0.005
    return 0
f2 = np.vectorize(f2)


def f3(x):
    # initial inlet design with only a small opening in the middle
    if x < 3 and x > 1.5:
        return  0.14*(x-1.5)
    # if x <= 1.5:
        # return 0
    # if x >= 3 and x < 4.925:
        # return 0
    # if x >= 4.925 and x < 5.7285:
        # return 0.05
    return 0.00000001
f3 = np.vectorize(f3)

# define the grid
x = np.arange(0, 5.8, 0.1)
vel_max = 0.2

# plot
plt.subplot(131)
plt.plot(f3(x), x, '.')
plt.ylabel('Height (m)')
plt.xlim(0, vel_max)
plt.xlabel('Inlet velocity (m/s)\n (limited opening)')

plt.subplot(132)
plt.plot(f2(x), x, '.')
plt.ylabel('Height (m)')
plt.xlim(0, vel_max)
plt.xlabel('Inlet velocity (m/s)\n (even inlet)')

plt.subplot(133)
plt.plot(f1(x), x, '.')
plt.ylabel('Height (m)')
plt.xlim(0, vel_max)
plt.xlabel('Inlet velocity (m/s)\n (bottom heavy)')
plt.savefig('inlet_vel')
plt.show()
